import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 1,
      title: 'Tea',
      amount: 70.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 2,
      title: 'shai',
      amount: 17.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 3,
      title: 'coffee',
      amount: 27.00,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.red,
              elevation: 5,
              child: Text('CHART!'),
            ),
          ),
          Column(
            children: transactions.map((e) {
              return Card(
                child: Row(
                  children: <Widget>[
                    // ignore: avoid_unnecessary_containers
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          '\$${e.amount}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          e.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat().add_yMMMMd().format(e.date),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
