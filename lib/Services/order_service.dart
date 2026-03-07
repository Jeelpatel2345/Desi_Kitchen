import 'package:cloud_firestore/cloud_firestore.dart';

class OrderService {

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> placeOrder(List items, double totalPrice) async {

    await _firestore.collection("orders").add({
      "items": items,
      "totalPrice": totalPrice,
      "status": "pending",
      "time": Timestamp.now(),
    });

  }

}