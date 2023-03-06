import 'package:flutter/material.dart';
import 'package:tester2/models/transaction.dart';
import 'package:tester2/widgets/new_transactions.dart';
import 'package:tester2/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'Tea',
      amount: 70.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'shai',
      amount: 17.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'coffee',
      amount: 27.00,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String Txtitle, double Txamount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: Txtitle,
        amount: Txamount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
