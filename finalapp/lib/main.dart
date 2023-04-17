import './transactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transactions> transactions = [
    Transactions(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't2',
      title: 'New Shoes2',
      amount: 79.99,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            // ignore: prefer_const_constructors
            child: Card(
              color: Colors.blue,
              // ignore: prefer_const_constructors, sort_child_properties_last
              child: Text('Chart!'),
              elevation: 5,
            ),
          ),
          // ignore: prefer_const_constructors
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Text(tx.id),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
