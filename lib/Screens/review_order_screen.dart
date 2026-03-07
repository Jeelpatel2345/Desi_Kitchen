import 'package:flutter/material.dart';
import '../Services/order_service.dart';

class ReviewOrderScreen extends StatelessWidget {

  final List items;
  final double totalPrice;

  const ReviewOrderScreen({
    super.key,
    required this.items,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Review Order")),

      body: Column(
        children: [

          Text("Total: ₹$totalPrice"),

          ElevatedButton(
            onPressed: () async {

              await OrderService().placeOrder(items, totalPrice);

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Order Confirmed")),
              );

              Navigator.pop(context);
            },
            child: const Text("Confirm Order"),
          ),

        ],
      ),
    );
  }
}