import 'package:flutter/material.dart';

class SettingsText extends StatelessWidget {
  final text;
  SettingsText({this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: 20),);
  }
}
