import 'package:flutter/material.dart';

class RightText extends StatelessWidget {
  final text;
  RightText({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: MediaQuery. of(context). size. width*0.4,
      child: Text(
        text,
        style: TextStyle(color: Colors.grey, fontSize: 18),
      ),
    );
  }
}
