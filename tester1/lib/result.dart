import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 1 || resultScore == 2) {
      resultText = 'MEH';
    } else if (resultScore >= 1000) {
      resultText = 'Suii';
    } else if (resultScore <= 0) {
      resultText = 'NO';
    } else {
      resultText = 'WTF';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase),
          TextButton(onPressed: resetHandler, child: Text('Restart'))
        ],
      ),
    );
  }
}
