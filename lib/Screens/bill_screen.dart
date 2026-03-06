import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:desi_kitchen/payment_provider.dart';
import 'package:desi_kitchen/Screens/cart_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class BillingScreen extends StatefulWidget {
  const BillingScreen({Key? key}) : super(key: key);

  @override
  State<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends State<BillingScreen> {

  /// 🔹 UPI LAUNCH FUNCTION
  Future<void> _launchUPI(double amount) async {
    final upiId = "yourupi@oksbi"; // change this
    final name = "Desi Kitchen";

    final uri = Uri.parse(
        "upi://pay?pa=$upiId&pn=$name&am=${amount.toStringAsFixed(2)}&cu=INR");

    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {

    final cart = Provider.of<CartProvider>(context);
    final cartItems = cart.items;

    double subtotal = cartItems.fold(
      0.0,
          (sum, item) => sum + (item['price'] * item['quantity']),
    );

    double tax = subtotal * 0.05;
    double total = subtotal + tax;

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text("Checkout"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// ORDER SUMMARY
            cartItems.isEmpty
                ? const Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: Text("No items in cart")),
            )
                : ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  title: Text(item['name']),
                  subtitle:
                  Text("₹${item['price']} x ${item['quantity']}"),
                  trailing: Text(
                    "₹${item['price'] * item['quantity']}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),

            /// BILL + PAYMENT
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    offset: Offset(0, -3),
                  )
                ],
              ),
              child: Column(
                children: [

                  _billRow("Item Total", subtotal),
                  _billRow("GST (5%)", tax),
                  const Divider(),
                  _billRow("Total", total, isTotal: true),
                  const SizedBox(height: 20),

                  /// PAYMENT METHODS
                  Consumer<PaymentProvider>(
                    builder: (context, paymentProvider, child) {

                      final methods =
                          paymentProvider.paymentMethods;

                      return Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [

                          const Text(
                            "Payment Method",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          ...methods.map((method) {

                            final isSelected =
                                paymentProvider.selectedMethod ==
                                    method['name'];

                            return GestureDetector(
                              onTap: () {
                                paymentProvider
                                    .changeMethod(method['name']);
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                    bottom: 10),
                                padding:
                                const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Colors.orange.shade50
                                      : Colors.white,
                                  borderRadius:
                                  BorderRadius.circular(10),
                                  border: Border.all(
                                    color: isSelected
                                        ? Colors.orange
                                        : Colors.grey.shade300,
                                    width: isSelected ? 2 : 1,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      method['icon'],
                                      color: method['color'],
                                      size: 22,
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        method['name'],
                                        style: TextStyle(
                                          fontWeight: isSelected
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    if (isSelected)
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.orange,
                                      ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 20),

                  /// PLACE ORDER BUTTON
                  ElevatedButton(
                    onPressed: cartItems.isEmpty
                        ? null
                        : () async {

                      final paymentProvider =
                      Provider.of<PaymentProvider>(
                          context,
                          listen: false);

                      if (paymentProvider
                          .selectedMethod.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content: Text(
                                "Please select payment method"),
                          ),
                        );
                        return;
                      }
                      if (paymentProvider.selectedMethod.contains("UPI")) {
                        await _launchUPI(total);

                        // Ask user if payment completed
                        bool? confirmed = await showDialog<bool>(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Payment Confirmation"),
                              content: const Text("Did you complete the payment?"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, false),
                                  child: const Text("No"),
                                ),
                                ElevatedButton(
                                  onPressed: () => Navigator.pop(context, true),
                                  child: const Text("Yes"),
                                ),
                              ],
                            );
                          },
                        );

                        if (confirmed != true) return;
                      }

                      cart.clearCart();

                      _showStyledSuccessDialog(
                        context,
                        total,
                        paymentProvider.selectedMethod,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize:
                      const Size(double.infinity, 50),
                    ),
                    child: const Text("Place Order"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// SUCCESS DIALOG (SECOND IMAGE STYLE)
  void _showStyledSuccessDialog(
      BuildContext context,
      double total,
      String method,
      ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange.shade100,
                  ),
                  child: const Icon(
                    Icons.check,
                    size: 55,
                    color: Colors.orange,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Order Successful 🎉",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 18),

                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [

                      _dialogRow(
                        "Total Paid",
                        "₹${total.toStringAsFixed(2)}",
                      ),

                      const SizedBox(height: 10),

                      _dialogRow(
                        "Payment Method",
                        method,
                      ),

                      const SizedBox(height: 10),

                      _dialogRow(
                        "Account / UPI",
                        method,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _dialogRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              value,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _billRow(String title, double amount,
      {bool isTotal = false}) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: isTotal
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
          Text(
            "₹${amount.toStringAsFixed(2)}",
            style: TextStyle(
              fontWeight: isTotal
                  ? FontWeight.bold
                  : FontWeight.normal,
              color:
              isTotal ? Colors.orange : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}