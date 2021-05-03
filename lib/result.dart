import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You Completed the quiz';
    if (resultScore <= 8)
      resultText = 'You are awesome';
    else if (resultScore <= 12)
      resultText = 'Your are likeable';
    else if (resultScore <= 20)
      resultText = 'Your are strange';
    else
      resultText = 'Your are bad';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.orange,
                side: BorderSide(color: Colors.orange),
              ),
              child: Text('Restart the Quiz'),
              onPressed: resetHandler),
        ],
      ),
    );
  }
}
