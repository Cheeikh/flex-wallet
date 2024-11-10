import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final IconData icon;
  final bool isExpense;
  final String category;

  const Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.icon,
    required this.isExpense,
    required this.category,
  });
} 