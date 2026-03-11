import 'package:desi_kitchen/Screens/bill_screen.dart';
import 'package:flutter/material.dart';
import 'menu_screen.dart';
import 'profile_screen.dart';
import 'cart_screen.dart';
import 'package:provider/provider.dart';
import 'package:desi_kitchen/Screens/cart_provider.dart';
import 'package:desi_kitchen/Screens/food_detail_screen.dart';
import 'package:desi_kitchen/data/cart_data.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
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
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome to',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: screenWidth * 0.04,
                                ),
                              ),
                              Text(
                                'Desi Kitchen',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.07,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProfileScreen(),
                                ),
                              );
                            },
                            child: CircleAvatar(
                              radius: screenWidth * 0.06,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                color: Colors.orange,
                                size: screenWidth * 0.07,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Special Offers',
                      style: TextStyle(
                        fontSize: screenWidth * 0.055,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.015),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.purple.shade400, Colors.purple
                              .shade700
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.purple.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min, // ⭐ Important
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '50% OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: screenWidth * 0.08,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.008),
                                  Text(
                                    'On first order',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: screenWidth * 0.04,
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.012),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MenuScreen(initialIndex: 0),
                                        ),
                                      );
                                    },

                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.purple,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.04,
                                        vertical: screenHeight * 0.012,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(90),
                                      ),
                                    ),
                                    child: const Text('Order Now'),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.local_offer,
                              size: screenWidth * 0.28,
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade50,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: screenWidth * 0.055,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MenuScreen(),
                                ),
                              );
                            },
                            child: const Text('See All'),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.015),
                      SizedBox(
                        height: screenHeight * 0.12,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildCategoryCard(
                              context,
                              'Drinks',
                              Icons.local_drink,
                              Colors.blue.shade100,
                              Colors.blue,
                              screenWidth,
                              screenHeight,
                              3,
                            ),
                            _buildCategoryCard(
                              context,
                              'Gujarati',
                              Icons.food_bank,
                              Colors.green.shade100,
                              Colors.green,
                              screenWidth,
                              screenHeight,
                              0,

                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.015),
                      SizedBox(
                        height: screenHeight * 0.12,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildCategoryCard(
                              context,
                              'Punjabi',
                              Icons.restaurant,
                              Colors.orange.shade100,
                              Colors.orange,
                              screenWidth,
                              screenHeight,
                              1,
                            ),
                            _buildCategoryCard(
                              context,
                              'Desserts',
                              Icons.cake,
                              Colors.pink.shade100,
                              Colors.pink,
                              screenWidth,
                              screenHeight,
                              2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Dishes',
                      style: TextStyle(
                        fontSize: screenWidth * 0.055,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.015),
                    _buildDishCard(
                      context,
                      'Paneer Butter Masala',
                      '₹240',
                      '⭐ 4.5',
                      true,
                      'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153322/paneer_butter_masala_ot7kfb.jpg',
                      'Creamy Punjabi curry made with paneer cubes cooked in buttery tomato gravy.',
                      ['Paneer','Tomato','Butter','Fresh Cream','Garam Masala'],
                      ['Butter Naan','Jeera Rice'],
                      screenWidth,
                      screenHeight,
                    ),

                    _buildDishCard(
                      context,
                      'Black Forest Pastry',
                      '₹80',
                      '⭐ 4.7',
                      true,
                      'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152605/black_forest_pastry_ehybiv.jpg',
                      'Soft chocolate sponge cake layered with whipped cream and cherries.',
                      ['Chocolate Cake','Whipped Cream','Cherry','Chocolate Syrup'],
                      ['Cold Coffee'],
                      screenWidth,
                      screenHeight,
                    ),

                    _buildDishCard(
                      context,
                      'Dhokla',
                      '₹80',
                      '⭐ 4.3',
                      true,
                      'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152814/dhokla_ch7qi3.jpg',
                      'Soft and fluffy Gujarati snack made from fermented gram flour batter.',
                      ['Gram Flour','Curd','Mustard Seeds','Green Chili'],
                      ['Green Chutney','Masala Chaas'],
                      screenWidth,
                      screenHeight,
                    ),

                    _buildDishCard(
                      context,
                      'Masala Chaas',
                      '₹30',
                      '⭐ 4.8',
                      true,
                      'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152768/masala_chaas_fdgj3b.jpg',
                      'Refreshing spiced buttermilk made with yogurt and roasted cumin.',
                      ['Curd','Water','Roasted Cumin','Black Salt','Mint'],
                      ['Gujarati Thali','Dhokla'],
                      screenWidth,
                      screenHeight,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    SizedBox(height: 90),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Menu',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Consumer<CartProvider>(
              builder: (context, cart, child) {
                return Stack(
                  children: [
                    const Icon(Icons.receipt),
                    if (cart.totalItemCount > 0)
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            cart.totalItemCount.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
            label: 'Bill',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartScreen()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BillingScreen()),
            );
          }
        },
      ),
    );
  }


  Widget _buildCategoryCard(BuildContext context,
      String title,
      IconData icon,
      Color bgColor,
      Color iconColor,
      double screenWidth,
      double screenHeight,
      int menuIndex,) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => MenuScreen(initialIndex: menuIndex),
          ),
        );
      },
      child: Container(
        width: screenWidth * 0.43,
        margin: EdgeInsets.only(right: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor),
            const SizedBox(height: 6),
            Text(
              title,
              style: TextStyle(
                fontSize: screenWidth * 0.032,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDishCard(
      BuildContext context,
      String name,
      String price,
      String rating,
      bool isVeg,
      String imagePath,
      String description,
      List<String> ingredients,
      List<String> combo,
      double screenWidth,
      double screenHeight,
      ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => FoodDetailScreen(
              food: {
                "name": name,
                "price": double.parse(price.replaceAll('₹','')),
                "rating": double.parse(rating.replaceAll('⭐','')),
                "veg": isVeg,
                "image": imagePath,
                "description": description,
                "ingredients": ingredients,
                "combo": combo,
              },
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: screenHeight * 0.015),
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
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: Row(
            children: [
              Container(
                width: screenWidth * 0.2,
                height: screenWidth * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: imagePath.toString().startsWith("http")
                      ? Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                  )
                      : Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  )
                ),
              ),

              SizedBox(width: screenWidth * 0.03),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: screenWidth * 0.042,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.005),

                    Row(
                      children: [
                        Icon(
                          isVeg ? Icons.circle : Icons.circle,
                          size: screenWidth * 0.03,
                          color: isVeg ? Colors.green : Colors.red,
                        ),
                        SizedBox(width: screenWidth * 0.01),

                        Text(
                          isVeg ? 'Veg' : 'Non-Veg',
                          style: TextStyle(
                            fontSize: screenWidth * 0.032,
                            color: Colors.grey,
                          ),
                        ),

                        SizedBox(width: screenWidth * 0.02),

                        Text(
                          rating,
                          style: TextStyle(
                            fontSize: screenWidth * 0.032,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.005),

                  Consumer<CartProvider>(
                    builder: (context, cart, child) {

                      int quantity = cart.getItemQuantity(name);

                      if (quantity == 0) {
                        return ElevatedButton(
                          onPressed: () {
                            cart.addItem({
                              'name': name,
                              'price': double.parse(price.replaceAll('₹', '')),
                              'quantity': 1,
                              'veg': isVeg,
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.03,
                              vertical: screenHeight * 0.005,
                            ),
                            minimumSize: Size.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Add',
                            style: TextStyle(fontSize: screenWidth * 0.032),
                          ),
                        );
                      }

                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove, color: Colors.orange),
                              onPressed: () {
                                int index = cart.items.indexWhere(
                                      (item) => item['name'] == name,
                                );
                                cart.decreaseQuantity(index);
                              },
                            ),

                            Text(
                              quantity.toString(),
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),

                            IconButton(
                              icon: const Icon(Icons.add, color: Colors.orange),
                              onPressed: () {
                                int index = cart.items.indexWhere(
                                      (item) => item['name'] == name,
                                );
                                cart.increaseQuantity(index);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}