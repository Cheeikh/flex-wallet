import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String balance;
  final String income;
  final String expenses;
  final VoidCallback onToggleVisibility;

  const BalanceCard({
    super.key,
    required this.balance,
    required this.income,
    required this.expenses,
    required this.onToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Implémentez le contenu de la carte ici
          ],
        ),
      ),
    );
  }
}
