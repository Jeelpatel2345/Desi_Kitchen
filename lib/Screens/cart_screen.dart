import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';
import 'bill_screen.dart';
import 'package:desi_kitchen/Services/notification_service.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _clearCart() {
    final cart = Provider.of<CartProvider>(context, listen: false);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Clear Cart?"),
        content: const Text("Remove all items from cart?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              cart.clearCart();
              Navigator.pop(context);
            },
            child: const Text("Clear"),
          ),
        ],
      ),
    );
  }

  void _confirmOrder() {

    /// 🔔 SHOW NOTIFICATION
    NotificationService.showNotification(
      "Order Confirmed 🍽️",
      "Your order is confirmed. It will arrive at your table soon.",
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Order Confirmed Successfully"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final cart = Provider.of<CartProvider>(context);
    final cartItems = cart.items;

    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Column(
          children: [

            /// HEADER
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(sw * 0.04),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange.shade700, Colors.orange.shade400],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),

                  Column(
                    children: [
                      Text(
                        "My Cart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: sw * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${cart.totalItemCount} items",
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: cartItems.isEmpty ? null : _clearCart,
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                ],
              ),
            ),

            /// CART ITEMS
            Expanded(
              child: cartItems.isEmpty
                  ? Center(
                child: Text(
                  "Your cart is empty",
                  style: TextStyle(
                    fontSize: sw * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
                  : FadeTransition(
                opacity: _animation,
                child: ListView.builder(
                  padding: EdgeInsets.all(sw * 0.04),
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return _buildCartItemCard(
                      cartItems[index],
                      index,
                      sw,
                      sh,
                    );
                  },
                ),
              ),
            ),

            /// BUTTONS
            if (cartItems.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [

                    /// CONFIRM ORDER BUTTON
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          backgroundColor: Colors.green,
                        ),
                        onPressed: _confirmOrder,
                        child: const Text(
                          "Confirm Order",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    /// GO TO BILLING BUTTON
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BillingScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Go To Billing",
                          style: TextStyle(fontSize: 18),
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

  Widget _buildCartItemCard(
      Map<String, dynamic> item,
      int index,
      double sw,
      double sh,
      ) {

    final cart = Provider.of<CartProvider>(context, listen: false);

    return Dismissible(
      key: Key("${item['name']}_$index"),
      onDismissed: (_) => cart.removeItem(index),
      background: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: sw * 0.05),
        margin: EdgeInsets.only(bottom: sh * 0.015),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: sh * 0.015),
        padding: EdgeInsets.all(sw * 0.035),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black.withOpacity(0.05),
            )
          ],
        ),
        child: Row(
          children: [

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['name'],
                    style: TextStyle(
                      fontSize: sw * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "₹${item['price']}",
                    style: TextStyle(
                      fontSize: sw * 0.04,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                IconButton(
                  onPressed: () => cart.decreaseQuantity(index),
                  icon: const Icon(Icons.remove),
                ),
                Text(
                  "${item['quantity']}",
                  style: TextStyle(
                    fontSize: sw * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () => cart.increaseQuantity(index),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}