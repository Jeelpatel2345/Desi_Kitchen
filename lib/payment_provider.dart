import 'package:flutter/material.dart';

class PaymentProvider with ChangeNotifier {

  String selectedMethod = "";

  final List<Map<String, dynamic>> paymentMethods = [
    {'name': 'UPI/Paytm', 'icon': Icons.mobile_friendly, 'color': Colors.purple},
    {'name': 'cash', 'icon': Icons.payment, 'color': Colors.blue},
    {'name': 'Credit Card', 'icon': Icons.credit_card, 'color': Colors.orange},
    {'name': 'Debit Card', 'icon': Icons.card_membership, 'color': Colors.green},
    {'name': 'Net Banking', 'icon': Icons.account_balance, 'color': Colors.indigo},
  ];

  void changeMethod(String method) {
    selectedMethod = method;
    notifyListeners();
  }
}