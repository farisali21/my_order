import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  final onpressed;
  ReturnButton({this.onpressed});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.center,
      iconSize: 30,
      onPressed: onpressed,
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 37,
      ),
    );
  }
}
