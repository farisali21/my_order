import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

import '../cubit/controller.dart';

class YourOrdersButton extends StatelessWidget {
  final text;

  YourOrdersButton({this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Color(0xFFFDE5E9), fontSize: 18),
    );
  }
}
