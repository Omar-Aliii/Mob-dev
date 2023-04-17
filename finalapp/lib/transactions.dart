import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; //We use to import required

class Transactions {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transactions({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}
