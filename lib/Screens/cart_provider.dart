import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {

  List<Map<String, dynamic>> _items = [];

  List<Map<String, dynamic>> get items => _items;

  int get totalItemCount =>
      _items.fold(0, (sum, item) => sum + (item['quantity'] ?? 0) as int);

  void addItem(Map<String, dynamic> item) {

    int index = _items.indexWhere(
            (element) => element['name'] == item['name']);

    if (index >= 0) {
      _items[index]['quantity'] =
          (_items[index]['quantity'] ?? 0) + 1;
    } else {
      _items.add({
        ...item,
        'quantity': 1,
      });
    }

    notifyListeners();
  }

  void increaseQuantity(int index) {
    _items[index]['quantity']++;
    notifyListeners();
  }

  void decreaseQuantity(int index) {
    if (_items[index]['quantity'] > 1) {
      _items[index]['quantity']--;
    } else {
      _items.removeAt(index);
    }
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
  int getItemQuantity(String name) {
    int index =
    _items.indexWhere((item) => item['name'] == name);

    if (index >= 0) {
      return _items[index]['quantity'];
    }
    return 0;
  }
}