import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:desi_kitchen/payment_provider.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // ─── Controllers ────────────────────────────────────────────
  final TextEditingController _firstNameCtrl = TextEditingController();
  final TextEditingController _lastNameCtrl = TextEditingController();
  final TextEditingController _phoneCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _addressCtrl = TextEditingController();

  // ─── State ──────────────────────────────────────────────────
  bool _profileSaved = false;


  // payment options list
  final List<Map<String, dynamic>> _paymentMethods = [
    {'name': 'UPI/PhonePe', 'icon': Icons.mobile_friendly, 'color': Colors.purple},
    {'name': 'Paytm', 'icon': Icons.account_balance_wallet, 'color': Colors.lightBlue},
    {'name': 'Credit Card', 'icon': Icons.credit_card, 'color': Colors.orange},
    {'name': 'Debit Card', 'icon': Icons.card_membership, 'color': Colors.teal},
    {'name': 'Net Banking', 'icon': Icons.account_balance, 'color': Colors.indigo},
  ];

  @override
  void dispose() {
    _firstNameCtrl.dispose();
    _lastNameCtrl.dispose();
    _phoneCtrl.dispose();
    _emailCtrl.dispose();
    _addressCtrl.dispose();
    super.dispose();
  }

  // ─── Validation helpers ─────────────────────────────────────
  bool _validatePhone() {
    final val = _phoneCtrl.text.trim();
    return val.length == 10 && val.startsWith(RegExp(r'[6-9]').toString());
  }

  bool _validateEmail() {
    return _emailCtrl.text.trim().contains('@') &&
        _emailCtrl.text.trim().contains('.');
  }

  // ─── Save profile ───────────────────────────────────────────
  void _saveProfile(BuildContext ctx) {
    final first = _firstNameCtrl.text.trim();
    final last = _lastNameCtrl.text.trim();
    final phone = _phoneCtrl.text.trim();
    final email = _emailCtrl.text.trim();

    if (first.isEmpty || last.isEmpty) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        _snackBar('Please enter your full name'),
      );
      return;
    }
    if (phone.length != 10) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        _snackBar('Please enter a valid 10‑digit phone number'),
      );
      return;
    }
    if (email.isNotEmpty && !_validateEmail()) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        _snackBar('Please enter a valid email address'),
      );
      return;
    }

    setState(() {
      _profileSaved = true;
    });

    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        content: const Text('Profile saved successfully!'),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green.shade700,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  // ─── Select payment ─────────────────────────────────────────
  void _selectPayment(BuildContext ctx, int index) {
    final provider = Provider.of<PaymentProvider>(ctx, listen: false);

    provider.changeMethod(_paymentMethods[index]['name']);

    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        content: Text('${_paymentMethods[index]['name']} selected'),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.orange.shade700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }


  SnackBar _snackBar(String msg) => SnackBar(
    content: Text(msg),
    duration: const Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.red.shade700,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  // ─────────────────────────── BUILD ─────────────────────────
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade50, // same as home
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ════════════════ ORANGE HEADER ════════════════
              _buildHeader(sw, sh),

              // ════════════════ PROFILE INFO CARD ════════════
              Padding(
                padding: EdgeInsets.all(sw * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _sectionTitle('Personal Details', sw),
                    SizedBox(height: sh * 0.012),
                    _buildProfileCard(sw, sh),
                  ],
                ),
              ),

              // ════════════════ PHONE CARD ═══════════════════
              Padding(
                padding: EdgeInsets.symmetric(horizontal: sw * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _sectionTitle('Contact Details', sw),
                    SizedBox(height: sh * 0.012),
                    _buildContactCard(sw, sh),
                  ],
                ),
              ),

              // ════════════════ PAYMENT OPTIONS ══════════════
              Padding(
                padding: EdgeInsets.symmetric(horizontal: sw * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _sectionTitle('Payment Methods', sw),
                    SizedBox(height: sh * 0.012),
                    _buildPaymentCard(sw, sh),
                  ],
                ),
              ),

              // ════════════════ SAVE BUTTON ══════════════════
              Padding(
                padding: EdgeInsets.all(sw * 0.04),
                child: _buildSaveButton(sw, sh),
              ),

              SizedBox(height: sh * 0.02),
            ],
          ),
        ),
      ),
      // ─── Bottom Nav (same as home / menu) ───
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // Profile tab
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          if (index != 4) Navigator.pop(context);
        },
      ),
    );
  }

  // ═══════════════════ HEADER ══════════════════════════════════
  Widget _buildHeader(double sw, double sh) {
    // initials from first + last name controllers
    final first = _firstNameCtrl.text.trim();
    final last = _lastNameCtrl.text.trim();
    final initials =
        '${first.isNotEmpty ? first[0] : 'U'}${last.isNotEmpty ? last[0] : 'P'}';

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange.shade700, Colors.orange.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(sw * 0.04),
        child: Column(
          children: [
            // top row: title + settings icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sw * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.settings, color: Colors.white70, size: sw * 0.06),
              ],
            ),
            SizedBox(height: sh * 0.025),
            // Avatar circle
            CircleAvatar(
              radius: sw * 0.11,
              backgroundColor: Colors.white,
              child: Text(
                initials,
                style: TextStyle(
                  fontSize: sw * 0.08,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade700,
                ),
              ),
            ),
            SizedBox(height: sh * 0.012),
            // Name below avatar
            Text(
              _profileSaved && first.isNotEmpty
                  ? '$first $last'
                  : 'Your Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: sw * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
            // Phone below name
            Text(
              _profileSaved && _phoneCtrl.text.trim().isNotEmpty
                  ? '+91 ${_phoneCtrl.text.trim()}'
                  : 'Add phone number',
              style: TextStyle(
                color: Colors.white70,
                fontSize: sw * 0.035,
              ),
            ),
            SizedBox(height: sh * 0.005),
            // Member badge
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: sw * 0.04,
                vertical: sh * 0.008,
              ),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: sw * 0.04),
                  SizedBox(width: sw * 0.015),
                  Text(
                    'Food Paradise Member',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: sw * 0.032,
                      fontWeight: FontWeight.w500,
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

  // ═══════════════════ SECTION TITLE ═══════════════════════════
  Widget _sectionTitle(String title, double sw) {
    return Text(
      title,
      style: TextStyle(
        fontSize: sw * 0.055,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // ═══════════════════ PROFILE (NAME) CARD ═════════════════════
  Widget _buildProfileCard(double sw, double sh) {
    return Container(
      width: double.infinity,
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
        padding: EdgeInsets.all(sw * 0.04),
        child: Column(
          children: [
            _inputField(
              controller: _firstNameCtrl,
              label: 'First Name',
              hint: 'e.g. Rahul',
              icon: Icons.person,
              sw: sw,
              sh: sh,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: sh * 0.018),
            _inputField(
              controller: _lastNameCtrl,
              label: 'Last Name',
              hint: 'e.g. Patel',
              icon: Icons.person_outline,
              sw: sw,
              sh: sh,
              keyboardType: TextInputType.name,
            ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════ CONTACT CARD ════════════════════════════
  Widget _buildContactCard(double sw, double sh) {
    return Container(
      width: double.infinity,
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
        padding: EdgeInsets.all(sw * 0.04),
        child: Column(
          children: [
            // ── Phone Number ──
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.phone_android, color: Colors.orange, size: sw * 0.05),
                    SizedBox(width: sw * 0.02),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: sw * 0.038,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: sh * 0.008),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [
                      // +91 prefix box
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: sw * 0.035,
                          vertical: sh * 0.018,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: Text(
                          '+91',
                          style: TextStyle(
                            fontSize: sw * 0.042,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange.shade700,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _phoneCtrl,
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '9876543210',
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: sw * 0.03,
                            ),
                            counterText: '', // hides the "10 / 10" counter
                          ),
                          style: TextStyle(
                            fontSize: sw * 0.042,
                            color: Colors.grey.shade800,
                          ),
                          onChanged: (_) => setState(() {}),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: sh * 0.02),

            // ── Email ──
            _inputField(
              controller: _emailCtrl,
              label: 'Email Address',
              hint: 'you@email.com',
              icon: Icons.email_outlined,
              sw: sw,
              sh: sh,
              keyboardType: TextInputType.emailAddress,
            ),

            SizedBox(height: sh * 0.02),
          ],
        ),
      ),
    );
  }

  // ═══════════════════ PAYMENT CARD ════════════════════════════
  Widget _buildPaymentCard(double sw, double sh) {
    return Container(
      width: double.infinity,
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
        padding: EdgeInsets.all(sw * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header row inside card
            Row(
              children: [
                Icon(Icons.account_balance_wallet, color: Colors.orange, size: sw * 0.05),
                SizedBox(width: sw * 0.02),
                Text(
                  'Choose a payment method',
                  style: TextStyle(
                    fontSize: sw * 0.038,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
            SizedBox(height: sh * 0.018),

            // ── grid of payment tiles ──
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: sw * 0.03,
                mainAxisSpacing: sw * 0.03,
                childAspectRatio: 2.8,
              ),
              itemCount: _paymentMethods.length,
              itemBuilder: (context, i) {
                final method = _paymentMethods[i];
                final provider = Provider.of<PaymentProvider>(context);
                final bool selected =
                    provider.selectedMethod == _paymentMethods[i]['name'];


                return GestureDetector(
                  onTap: () => _selectPayment(context, i),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      color: selected
                          ? Colors.orange.shade50
                          : Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: selected ? Colors.orange : Colors.grey.shade300,
                        width: selected ? 2 : 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: sw * 0.03,
                        vertical: sh * 0.008,
                      ),
                      child: Row(
                        children: [
                          // icon circle
                          Container(
                            width: sw * 0.09,
                            height: sw * 0.09,
                            decoration: BoxDecoration(
                              color: (method['color'] as Color).withOpacity(0.12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              method['icon'] as IconData,
                              color: method['color'] as Color,
                              size: sw * 0.05,
                            ),
                          ),
                          SizedBox(width: sw * 0.02),
                          Expanded(
                            child: Text(
                              method['name'],
                              style: TextStyle(
                                fontSize: sw * 0.033,
                                fontWeight: selected ? FontWeight.bold : FontWeight.w500,
                                color: selected
                                    ? Colors.orange.shade700
                                    : Colors.grey.shade700,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          // tick when selected
                          if (selected)
                            Icon(Icons.check_circle, color: Colors.orange, size: sw * 0.05),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),

            SizedBox(height: sh * 0.018),

            // ── "Add new card" banner ──
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Add new card feature coming soon!'),
                    duration: const Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.orange.shade700,
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: sh * 0.018),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    style: BorderStyle.solid,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_circle_outline, color: Colors.orange, size: sw * 0.05),
                    SizedBox(width: sw * 0.02),
                    Text(
                      'Add New Card',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: sw * 0.038,
                        fontWeight: FontWeight.w600,
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
  }

  // ═══════════════════ SAVE BUTTON ═════════════════════════════
  Widget _buildSaveButton(double sw, double sh) {
    return GestureDetector(
      onTap: () => _saveProfile(context),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: sh * 0.022),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade700, Colors.orange.shade400],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.orange.withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.save_outlined, color: Colors.white, size: sw * 0.055),
            SizedBox(width: sw * 0.02),
            Text(
              'Save Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: sw * 0.048,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════ GENERIC INPUT FIELD ═════════════════════
  Widget _inputField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
    required double sw,
    required double sh,
    required TextInputType keyboardType,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.orange, size: sw * 0.05),
            SizedBox(width: sw * 0.02),
            Text(
              label,
              style: TextStyle(
                fontSize: sw * 0.038,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
        SizedBox(height: sh * 0.008),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            maxLines: maxLines,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey.shade400),
              contentPadding: EdgeInsets.symmetric(
                horizontal: sw * 0.04,
                vertical: sh * 0.018,
              ),
            ),
            style: TextStyle(
              fontSize: sw * 0.042,
              color: Colors.grey.shade800,
            ),
            onChanged: (_) => setState(() {}),
          ),
        ),
      ],
    );
  }
}