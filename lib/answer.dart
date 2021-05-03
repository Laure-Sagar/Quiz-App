import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandeler;
  final String answerText;

  Answer(this.selectHandeler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          this.answerText,
        ),
        onPressed: selectHandeler,
      ),
    );
  }
}
