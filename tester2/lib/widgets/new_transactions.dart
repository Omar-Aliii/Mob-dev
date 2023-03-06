import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/services.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list.dart';
import '../widgets/user_transactions.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              hintText: 'title',
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: amountController,
            decoration: InputDecoration(
              hintText: 'amount',
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('hi');
              addTx(
                titleController.text,
                double.parse(amountController.text),
              );
            },
            child: Text(
              'add Trans',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
