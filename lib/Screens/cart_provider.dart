import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartProvider with ChangeNotifier {

  List<Map<String, dynamic>> _items = [];

  List<Map<String, dynamic>> get items => _items;

  int get totalItemCount =>
      _items.fold(0, (sum, item) => sum + (item['quantity'] ?? 0) as int);

  /// 🔥 ADD ITEM + SAVE TO FIREBASE
  Future<void> addItem(Map<String, dynamic> item) async {

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

    try {

      await FirebaseFirestore.instance
          .collection("cart_items")
          .add({
        "name": item['name'],
        "price": item['price'],
        "quantity": 1,
        "addedTime": Timestamp.now(),
      });

      print("Item saved to Firebase");

    } catch (e) {
      print("Firebase error: $e");
    }

  }

  void increaseQuantity(int index) {

    _items[index]['quantity']++;

    /// 🔥 UPDATE FIREBASE
    FirebaseFirestore.instance
        .collection("cart_items")
        .where("name", isEqualTo: _items[index]['name'])
        .get()
        .then((snapshot) {
      for (var doc in snapshot.docs) {
        doc.reference.update({
          "quantity": _items[index]['quantity']
        });
      }
    });

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

    FirebaseFirestore.instance
        .collection("cart_items")
        .where("name", isEqualTo: _items[index]['name'])
        .get()
        .then((snapshot) {
      for (var doc in snapshot.docs) {
        doc.reference.delete();
      }
    });

    _items.removeAt(index);
    notifyListeners();
  }

  void clearCart() {

    /// 🔥 CLEAR FIREBASE CART
    FirebaseFirestore.instance
        .collection("cart_items")
        .get()
        .then((snapshot) {
      for (var doc in snapshot.docs) {
        doc.reference.delete();
      }
    });

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