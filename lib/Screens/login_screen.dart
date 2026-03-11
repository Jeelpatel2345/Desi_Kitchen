import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {

  final TextEditingController _phoneController = TextEditingController();
  final List<TextEditingController> _otpControllers =
  List.generate(6, (_) => TextEditingController());

  final FirebaseAuth _auth = FirebaseAuth.instance;

  String verificationId = "";

  final List<FocusNode> _otpFocusNodes =
  List.generate(6, (_) => FocusNode());

  bool _isLoading = false;
  bool _showOtpSection = false;

  int _resendTimer = 30;
  bool _canResend = false;

  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));

    _fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero)
            .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));

    _animationController.forward();
  }

  @override
  void dispose() {
    _phoneController.dispose();

    for (var c in _otpControllers) {
      c.dispose();
    }

    for (var f in _otpFocusNodes) {
      f.dispose();
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

      if (!mounted) return false;

      setState(() {
        _resendTimer--;

        if (_resendTimer == 0) {
          _canResend = true;
        }
      });

      return _resendTimer > 0;
    });
  }

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  void _handleSendOtp() async {
    final phone = _phoneController.text.trim();

    if (phone.length != 10) {
      _showSnackBar("Enter valid number", Colors.red);
      return;
    }

    setState(() => _isLoading = true);

    await _auth.verifyPhoneNumber(
      phoneNumber: "+91$phone",
      verificationCompleted: (credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (e) {
        setState(() => _isLoading = false);
        _showSnackBar(e.message ?? "Error", Colors.red);
      },
      codeSent: (id, _) {
        verificationId = id;

        setState(() {
          _isLoading = false;
          _showOtpSection = true;
        });

        _startResendTimer();
      },
      codeAutoRetrievalTimeout: (id) {
        verificationId = id;
      },
    );
  }

  void _handleVerifyOtp() async {
    String otp = _otpControllers.map((e) => e.text).join();

    if (otp.length != 6) {
      _showSnackBar("Enter full OTP", Colors.red);
      return;
    }

    setState(() => _isLoading = true);

    try {
      PhoneAuthCredential credential =
      PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: otp);

      await _auth.signInWithCredential(credential);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );

    } catch (e) {
      _showSnackBar("Invalid OTP", Colors.red);
    }

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {

    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                  children: [

                    /// HEADER
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: sh * .05),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange.shade700,
                            Colors.orange.shade400
                          ],
                        ),
                      ),
                      child: FadeTransition(
                        opacity: _fadeAnimation,
                        child: Column(
                          children: [
                            Container(
                              width: sw * .35,
                              height: sw * .35,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.restaurant_menu,
                                size: sw * .18,
                                color: Colors.orange,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                                "Desi Kitchen",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: sw * .08,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Delicious food delivered to your door",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: sw * .04,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(sw * .05),
                      child: SlideTransition(
                        position: _slideAnimation,
                        child: Column(
                          children: [

                            Text(
                              _showOtpSection ? "Verify OTP" : "Welcome Back",
                              style: TextStyle(
                                fontSize: sw * .07,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 20),

                            if (!_showOtpSection)
                              _phoneField(sw, sh),

                            if (_showOtpSection)
                              _otpField(sw, sh),

                            const SizedBox(height: 30),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 14,
                                  horizontal: 50,
                                ),
                              ),
                              onPressed: _isLoading
                                  ? null
                                  : (_showOtpSection
                                  ? _handleVerifyOtp
                                  : _handleSendOtp),
                              child: _isLoading
                                  ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                                  : Text(
                                _showOtpSection
                                    ? "Verify OTP"
                                    : "Send OTP",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _phoneField(double sw, double sh) {
    return TextField(
      controller: _phoneController,
      keyboardType: TextInputType.phone,
      maxLength: 10,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: const InputDecoration(
        labelText: "Mobile Number",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _otpField(double sw, double sh) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(6, (i) {
        return SizedBox(
          width: sw * .12,
          child: TextField(
            controller: _otpControllers[i],
            focusNode: _otpFocusNodes[i],
            textAlign: TextAlign.center,
            maxLength: 1,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              counterText: "",
              border: OutlineInputBorder(),
            ),
            onChanged: (v) {
              if (v.length == 1 && i < 5) {
                _otpFocusNodes[i + 1].requestFocus();
              }
            },
          ),
        );
      }),
    );
  }
}