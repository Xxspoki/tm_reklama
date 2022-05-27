import 'package:flutter/material.dart';

class BalanceProvider extends ChangeNotifier {
  final double _balance = 1.80;

  double get balance => _balance;
}
