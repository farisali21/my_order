import 'package:flutter/material.dart';

class LeftText extends StatelessWidget {
  final icon;
  final text;
  LeftText({this.text,this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: Colors.black,size: 28,),
        SizedBox(width: 5,),
        Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      ],
    );
  }
}
