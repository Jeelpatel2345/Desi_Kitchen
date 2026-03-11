import 'package:flutter/material.dart';
import 'cart_provider.dart';
import 'package:desi_kitchen/Screens/cart_screen.dart';
import 'package:provider/provider.dart';

import 'package:desi_kitchen/data/cart_data.dart';
import 'package:desi_kitchen/Screens/food_detail_screen.dart';




class MenuScreen extends StatefulWidget {
  final int initialIndex;

  const MenuScreen({super.key, this.initialIndex = 0});

  @override

  State<MenuScreen> createState() => _MenuScreenState();
}




class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {

  late List<Map<String, dynamic>> allMenus;

  late TabController _tabController;

  String searchQuery = '';

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: widget.initialIndex,
    );

    // 🔥 Combine all menus into one list
    allMenus = foodMenu;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  // Gujarati Menu Items (100+ items)
  final List<Map<String, dynamic>> gujaratiMenu = [
  ];

  // Punjabi Menu Items (100+ items)
  final List<Map<String, dynamic>> punjabiMenu = [
  ];

  // NEW! Desserts Menu Items (100+ items)
  final List<Map<String, dynamic>> dessertMenu = [
  ];

  // NEW Drink Menu Items (20+ item)
  final List<Map<String, dynamic>> drinkMenu = [
];



  get categoryName => null;

  List<Map<String, dynamic>> getFilteredMenu(List<Map<String, dynamic>> menu) {
    if (searchQuery.isEmpty) return menu;

    return menu.where((item) {
      final name = (item['name'] ?? '').toString().toLowerCase();
      return name.contains(searchQuery.toLowerCase());
    }).toList();
  }

  Map<String, List<Map<String, dynamic>>> groupByCategory(
      List<Map<String, dynamic>> menu) {
    Map<String, List<Map<String, dynamic>>> grouped = {};
    for (var item in menu) {
      String category = item['category'];
      if (!grouped.containsKey(category)) {
        grouped[category] = [];
      }
      grouped[category]!.add(item);
    }
    return grouped;
  }
  Widget _buildDishCard(BuildContext context, Map<String, dynamic> food) {

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => FoodDetailScreen(food: food),
          ),
        );
      },

      child: Card(
        child: ListTile(
          leading: Image.network(
            food["image"],
            width: 60,
            fit: BoxFit.cover,
          ),

          title: Text(food["name"]),

          subtitle: Text("₹${food["price"]}"),

          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartProvider>(context, listen: false);

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Our Menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    }); 
                  },
                  decoration: InputDecoration(
                    hintText: 'Search menu items...',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
              ),
              TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Tab(text: "Gujarati"),
                  Tab(text: "Punjabi"),
                  Tab(text: "Desserts"),
                  Tab(text: "Drinks"),
                ],
              ),
            ],
          ),
        ),
      ),
      body: searchQuery.isNotEmpty
          ? _buildMenuList(allMenus) // 🔥 Global search
          :TabBarView(
        controller: _tabController,
        children: [

          // Gujarati
          // Gujarati
          _buildMenuList(
            foodMenu.where((item) =>
            item['category'] == 'Sabzi' ||
                item['category'] == 'Snacks' ||
                item['category'] == 'Thali' ||
                item['category'] == 'Dal' ||
                item['category'] == 'Rotli' ||
                item['category'] == 'Rice'
            ).toList(),
          ),

          // Punjabi
          _buildMenuList(
            foodMenu.where((item) =>
                item['category'] == 'Starters' ||
                item['category'] == 'Veg Main Course' ||
                item['category'] == 'Non-Veg Main Course' ||
                item['category'] == 'Bread' ||
                item['category'] == 'Rice & Biryani'||
                item['category'] == 'Raita & Salad'
            ).toList(),
          ),

          // Desert
          _buildMenuList(
            foodMenu.where((item) =>
            item['category'] == 'Indian Traditional Sweets' ||
                item['category'] == 'Halwa' ||
                item['category'] == 'Ice Cream & Kulfi' ||
                item['category'] == 'Cakes & Pastries' ||
                item['category'] == 'Shakes & Smoothies'||
                item['category'] == 'Puddings'||
                item['category'] == 'Special Deserts'
            ).toList(),
          ),

          // Drinks
          _buildMenuList(
            foodMenu.where((item) =>
                item['category'] == 'Cold Drinks' ||
                item['category'] == 'Buttermilk & Lassi' ||
                item['category'] == 'Fresh Juice' ||
                item['category'] == 'Hot Beverages' ||
                item['category'] == 'Special Drinks'
            ).toList(),
          ),
        ],
      )

    );
  }



  Widget _buildMenuList(List<Map<String, dynamic>> menu) {
    final filteredMenu = getFilteredMenu(menu);
    final groupedMenu = groupByCategory(filteredMenu);
    final categories = groupedMenu.keys.toList();

    if (filteredMenu.isEmpty) {
      return const Center(
        child: Text(
          'No items found',
          style: TextStyle(fontSize: 18),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        String category = categories[index];
        List<Map<String, dynamic>> items = groupedMenu[category]!;

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 🔥 CATEGORY HEADER
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Text(
                  category,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ),

              // 🔥 ITEMS LIST
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                separatorBuilder: (context, index) =>
                const Divider(height: 1),
                itemBuilder: (context, itemIndex) {
                  final item = items[itemIndex];

                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FoodDetailScreen(food: item),
                        ),
                      );
                    },
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),

                    // ✅ IMAGE FOR ALL ITEMS
                    leading: item['image'] != null
                        ? ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: item['image'].toString().startsWith('http')
                          ? Image.network(
                        item['image'],
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      )
                          : Image.asset(
                        item['image'],
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                        : Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: item['veg']
                            ? Colors.green.shade50
                            : Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        item['veg'] ? Icons.eco : Icons.restaurant,
                        color: item['veg'] ? Colors.green : Colors.red,
                      ),
                    ),

                    title: Text(
                      item['name'],
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    subtitle: Text(
                      item['veg']
                          ? 'Vegetarian'
                          : 'Non-Vegetarian',
                      style: TextStyle(
                        color: item['veg']
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '₹${item['price']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                            BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add,
                                color: Colors.white),
                            iconSize: 20,
                            padding:
                            const EdgeInsets.all(4),
                            constraints:
                            const BoxConstraints(),
                            onPressed: () async {

                              var cart = Provider.of<CartProvider>(context, listen: false);

                              await cart.addItem({
                                'name': item['name'],
                                'price': item['price'],
                                'category': item['category'],
                              });

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('${item['name']} added to cart'),
                                  duration: const Duration(seconds: 1),
                                ),
                              );

                            },

                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}


