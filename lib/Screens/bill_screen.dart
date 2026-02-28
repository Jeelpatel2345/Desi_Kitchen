import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:desi_kitchen/payment_provider.dart';
import 'package:desi_kitchen/Screens/cart_provider.dart';


class BillingScreen extends StatefulWidget {
  const BillingScreen({Key? key}) : super(key: key);

  @override
  State<BillingScreen> createState() => _BillingScreenState();
}

class _BillingScreenState extends State<BillingScreen> {

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
                  subtitle: Text(
                      "₹${item['price']} x ${item['quantity']}"),
                  trailing: Text(
                    "₹${item['price'] * item['quantity']}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),

            /// BILL DETAILS
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.black12,
                      offset: Offset(0, -3))
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

                      final methods = paymentProvider.paymentMethods;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const Text(
                            "Payment Method",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          ...methods.map((method) {

                            final isSelected =
                                paymentProvider.selectedMethod == method['name'];

                            return GestureDetector(
                              onTap: () {
                                paymentProvider.changeMethod(method['name']);
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Colors.orange.shade50
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
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
                                      method['icon'] as IconData,
                                      color: method['color'],
                                    ),

                                    const SizedBox(width: 12),

                                    Flexible(
                                      child: Text(
                                        method['name'] as String,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight:
                                          isSelected ? FontWeight.bold : FontWeight.normal,
                                        ),
                                      ),
                                    ),


                                    const SizedBox(width: 6),

                                    if (isSelected)
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.orange,
                                        size: 20,
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

                  const SizedBox(height: 15),

                  /// PLACE ORDER BUTTON
                  ElevatedButton(
                    onPressed: cartItems.isEmpty
                        ? null
                        : () async {
                      final paymentProvider =
                      Provider.of<PaymentProvider>(context,
                          listen: false);

                      if (paymentProvider.selectedMethod.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                            Text("Please select payment method"),
                          ),
                        );
                        return;
                      }


// Clear cart after saving
                      cart.clearCart();

                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          final paymentProvider =
                          Provider.of<PaymentProvider>(context, listen: false);

                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [

                                  /// SUCCESS ICON
                                  Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange.shade100,
                                    ),
                                    child: const Icon(
                                      Icons.check_circle,
                                      size: 60,
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

                                  const SizedBox(height: 15),

                                  /// BILL DETAILS
                                  Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        _dialogRow("Total Paid", "₹${total.toStringAsFixed(2)}"),
                                        const SizedBox(height: 8),
                                        _dialogRow("Payment Method",
                                            paymentProvider.selectedMethod),
                                        const SizedBox(height: 8),
                                        _dialogRow("Account / UPI",
                                            paymentProvider.selectedMethod),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(height: 25),

                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      minimumSize: const Size(double.infinity, 50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: const Text(
                                      "Done",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 50),
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

  Widget _dialogRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }

  Widget _billRow(String title, double amount, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight:
              isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            "₹${amount.toStringAsFixed(2)}",
            style: TextStyle(
              fontWeight:
              isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Colors.orange : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}