import 'package:flutter/material.dart';
import '../models/transaction.dart';



class TransactionList extends StatelessWidget {

  final List<Transaction> transactions;

  final VoidCallback onViewAll;



  const TransactionList({

    super.key,

    required this.transactions,

    required this.onViewAll,

  });



  @override

  Widget build(BuildContext context) {

    return Column(

      children: [

        ListView.builder(

          shrinkWrap: true,

          physics: NeverScrollableScrollPhysics(),

          itemCount: transactions.length,

          itemBuilder: (context, index) {

            final transaction = transactions[index];

            return ListTile(

              leading: Icon(transaction.icon),

              title: Text(transaction.title),

              subtitle: Text(transaction.date.toString()),

              trailing: Text(

                '${transaction.isExpense ? "-" : "+"}${transaction.amount.toStringAsFixed(2)} €',

                style: TextStyle(

                  color: transaction.isExpense ? Colors.red : Colors.green,

                ),

              ),

            );

          },

        ),

        TextButton(

          onPressed: onViewAll,

          child: Text('Voir tout'),

        ),

      ],

    );

  }

}


