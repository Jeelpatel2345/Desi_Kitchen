import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:desi_kitchen/Screens/cart_provider.dart';

class FoodDetailScreen extends StatelessWidget {
  final Map<String, dynamic> food;

  const FoodDetailScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food["name"]),
        backgroundColor: Colors.orange,
      ),
      body: Consumer<CartProvider>(
        builder: (context, cart, child) {
          int qty = cart.getItemQuantity(food['name']);

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// FOOD IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    food["image"],
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 20),

                /// FOOD NAME
                Text(
                  food["name"],
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                /// VEG / NON VEG
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 12,
                      color: food["veg"] ? Colors.green : Colors.red,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      food["veg"] ? "Veg" : "Non-Veg",
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                /// RATING + PRICE
                Row(
                  children: [

                    const Icon(Icons.star, color: Colors.orange, size: 20),

                    const SizedBox(width: 5),

                    Text(
                      (food["rating"] ?? "4.5").toString(),
                      style: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(width: 20),

                    Text(
                      "₹${food["price"]}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                /// DESCRIPTION
                Text(
                  food["description"] ??
                      "This is one of our popular dishes.",
                  style: const TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 20),

                /// INGREDIENTS
                const Text(
                  "Ingredients",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),

                ...(food["ingredients"] ?? [])
                    .map<Widget>((i) => Text("• $i"))
                    .toList(),

                const SizedBox(height: 20),

                /// COMBO
                const Text(
                  "Best Combo With",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),

                ...(food["combo"] ?? [])
                    .map<Widget>((i) => Text("• $i"))
                    .toList(),

                const SizedBox(height: 30),

                qty == 0
                    ? SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {
                      cart.addItem(food);
                    },
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
                    : Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove, color: Colors.orange),
                        onPressed: () {
                          cart.removeItemByName(food['name']);
                        },
                      ),
                      Text(
                        qty.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add, color: Colors.orange),
                        onPressed: () {
                          cart.addItem(food);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}