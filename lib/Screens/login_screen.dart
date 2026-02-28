import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  final TextEditingController _phoneController = TextEditingController();
  final List<TextEditingController> _otpControllers = List.generate(6, (_) => TextEditingController());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationId = "";
  final List<FocusNode> _otpFocusNodes = List.generate(6, (_) => FocusNode());

  bool _isLoading = false;
  bool _showOtpSection = false; // Toggle between phone and OTP screens
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  int _resendTimer = 30;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var node in _otpFocusNodes) {
      node.dispose();
    }
    _animationController.dispose();
    super.dispose();
  }

  void _startResendTimer() {
    setState(() {
      _resendTimer = 30;
      _canResend = false;
    });

    Future.doWhile(() async {
      await Future.delayed(const Duration(seconds: 1));
      if (mounted) {
        setState(() {
          _resendTimer--;
          if (_resendTimer == 0) {
            _canResend = true;
          }
        });
        return _resendTimer > 0;
      }
      return false;
    });
  }

  void _handleSendOtp() async {
    final phone = _phoneController.text.trim();

    if (phone.isEmpty) {
      _showSnackBar('Please enter your mobile number', Colors.red.shade700);
      return;
    }

    if (phone.length != 10) {
      _showSnackBar('Please enter a valid 10-digit mobile number', Colors.red.shade700);
      return;
    }

    if (!RegExp(r'^[6-9][0-9]{9}$').hasMatch(phone)) {
      _showSnackBar('Please enter a valid Indian mobile number', Colors.red.shade700);
      return;
    }

    setState(() {
      _isLoading = true;
    });

    await _auth.verifyPhoneNumber(
      phoneNumber: "+91$phone",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (!mounted) return;
        setState(() {
          _isLoading = false;
        });
        _showSnackBar(e.message ?? "Verification Failed", Colors.red.shade700);
      },
      codeSent: (String verId, int? resendToken) {
        verificationId = verId;

        if (!mounted) return;

        setState(() {
          _isLoading = false;
          _showOtpSection = true;
        });

        _startResendTimer();
        _showSnackBar('OTP sent to +91 $phone', Colors.green.shade700);
      },
      codeAutoRetrievalTimeout: (String verId) {
        verificationId = verId;
      },
    );
  }

  void _handleVerifyOtp() async {
    String otp = _otpControllers.map((c) => c.text).join();

    if (otp.length != 6) {
      _showSnackBar('Please enter complete 6-digit OTP', Colors.red.shade700);
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );

      await _auth.signInWithCredential(credential);

      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
      });

      _showSnackBar("Invalid OTP", Colors.red.shade700);
    }
  }

  void _handleResendOtp() async {
    if (!_canResend) return;

    final phone = _phoneController.text.trim();

    await _auth.verifyPhoneNumber(
      phoneNumber: "+91$phone",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        _showSnackBar(e.message ?? "Resend failed", Colors.red.shade700);
      },
      codeSent: (String verId, int? resendToken) {
        verificationId = verId;
        _showSnackBar('OTP resent successfully', Colors.green.shade700);
      },
      codeAutoRetrievalTimeout: (String verId) {
        verificationId = verId;
      },
    );

    for (var controller in _otpControllers) {
      controller.clear();
    }

    _startResendTimer();
  }

  void _handleChangeNumber() {
    setState(() {
      _showOtpSection = false;
      _phoneController.clear();
      for (var controller in _otpControllers) {
        controller.clear();
      }
    });
  }

  void _showSnackBar(String message, Color bgColor) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: bgColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: screenHeight - MediaQuery.of(context).padding.top,
            child: Column(
              children: [
                // ════════════════ ORANGE HEADER ════════════════
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.orange.shade700, Colors.orange.shade400],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.05,
                    ),
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Column(
                        children: [
                          // Logo / Icon
                          Container(
                            width: screenWidth * 0.35,
                            height: screenWidth * 0.35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.restaurant_menu,
                              size: screenWidth * 0.18,
                              color: Colors.orange.shade700,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          // App Name
                          Text(
                            'Desi Kitchen',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.08,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.008),
                          // Tagline
                          Text(
                            'Delicious food delivered to your door',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: screenWidth * 0.038,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // ════════════════ LOGIN FORM ════════════════
                Expanded(
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Welcome Text
                            Text(
                              _showOtpSection ? 'Verify OTP' : 'Welcome Back!',
                              style: TextStyle(
                                fontSize: screenWidth * 0.065,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: screenHeight * 0.008),
                            Text(
                              _showOtpSection
                                  ? 'Enter 6-digit code sent to +91 ${_phoneController.text}'
                                  : 'Enter your mobile number to continue',
                              style: TextStyle(
                                fontSize: screenWidth * 0.037,
                                color: Colors.grey.shade600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: screenHeight * 0.04),

                            // Phone Number Card OR OTP Card
                            if (!_showOtpSection) _buildPhoneCard(screenWidth, screenHeight)
                            else _buildOtpCard(screenWidth, screenHeight),

                            SizedBox(height: screenHeight * 0.03),

                            // Action Button
                            GestureDetector(
                              onTap: _isLoading
                                  ? null
                                  : (_showOtpSection ? _handleVerifyOtp : _handleSendOtp),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                  vertical: screenHeight * 0.02,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: _isLoading
                                        ? [Colors.grey.shade400, Colors.grey.shade300]
                                        : [Colors.orange.shade700, Colors.orange.shade400],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: _isLoading
                                          ? Colors.grey.withOpacity(0.3)
                                          : Colors.orange.withOpacity(0.4),
                                      blurRadius: 10,
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: _isLoading
                                    ? Center(
                                  child: SizedBox(
                                    width: screenWidth * 0.06,
                                    height: screenWidth * 0.06,
                                    child: const CircularProgressIndicator(
                                      strokeWidth: 3,
                                      valueColor:
                                      AlwaysStoppedAnimation<Color>(Colors.white),
                                    ),
                                  ),
                                )
                                    : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      _showOtpSection ? Icons.check_circle : Icons.sms,
                                      color: Colors.white,
                                      size: screenWidth * 0.055,
                                    ),
                                    SizedBox(width: screenWidth * 0.02),
                                    Text(
                                      _showOtpSection ? 'Verify OTP' : 'Send OTP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: screenWidth * 0.045,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // Resend OTP or Change Number
                            if (_showOtpSection) ...[
                              SizedBox(height: screenHeight * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Didn't receive OTP? ",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.035,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: _canResend ? _handleResendOtp : null,
                                    child: Text(
                                      _canResend ? 'Resend' : 'Resend in ${_resendTimer}s',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.035,
                                        color: _canResend ? Colors.orange.shade700 : Colors.grey.shade400,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              GestureDetector(
                                onTap: _handleChangeNumber,
                                child: Text(
                                  'Change Number',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.038,
                                    color: Colors.orange.shade700,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],

                            // Info Text (only for phone screen)
                            if (!_showOtpSection) ...[
                              SizedBox(height: screenHeight * 0.02),
                              Container(
                                padding: EdgeInsets.all(screenWidth * 0.035),
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.blue.shade100,
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue.shade700,
                                      size: screenWidth * 0.045,
                                    ),
                                    SizedBox(width: screenWidth * 0.065),
                                    Expanded(
                                      child: Text(
                                        'We\'ll send you a 6-digit OTP to verify your number',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.025,
                                          color: Colors.blue.shade800,
                                          height: 0.2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // ════════════════ FOOTER ════════════════
                Padding(
                  padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Column(
                      children: [
                        Text(
                          'By continuing, you agree to our',
                          style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.003),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Terms of Service',
                              style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                color: Colors.orange.shade700,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              ' & ',
                              style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                color: Colors.orange.shade700,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ═══════════════════ PHONE NUMBER CARD ══════════════════════
  Widget _buildPhoneCard(double screenWidth, double screenHeight) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Label
            Row(
              children: [
                Icon(
                  Icons.phone_android,
                  color: Colors.orange,
                  size: screenWidth * 0.05,
                ),
                SizedBox(width: screenWidth * 0.02),
                Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.012),

            // Phone Input Field
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1.5,
                ),
              ),
              child: Row(
                children: [
                  // +91 Prefix
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.018,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1.5,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '🇮🇳',
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.015),
                        Text(
                          '+91',
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Input Field
                  Expanded(
                    child: TextField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      autofocus: false,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      style: TextStyle(
                        fontSize: screenWidth * 0.042,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade800,
                        letterSpacing: 1.5,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '98765 43210',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.04,
                        ),
                        counterText: '',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════ OTP CARD ══════════════════════════════
  Widget _buildOtpCard(double screenWidth, double screenHeight) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Label
            Row(
              children: [
                Icon(
                  Icons.lock_outline,
                  color: Colors.orange,
                  size: screenWidth * 0.05,
                ),
                SizedBox(width: screenWidth * 0.02),
                Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),

            // OTP Input Boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: screenWidth * 0.12,
                  child: TextField(
                    controller: _otpControllers[index],
                    focusNode: _otpFocusNodes[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: TextStyle(
                      fontSize: screenWidth * 0.055,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                    decoration: InputDecoration(
                      counterText: '',
                      filled: true,
                      fillColor: Colors.grey.shade50,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.orange.shade400,
                          width: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.018,
                      ),
                    ),
                    onChanged: (value) {
                      if (value.length == 1 && index < 5) {
                        _otpFocusNodes[index + 1].requestFocus();
                      } else if (value.isEmpty && index > 0) {
                        _otpFocusNodes[index - 1].requestFocus();
                      }
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}