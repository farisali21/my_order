import 'package:flutter/material.dart';

class DrawerSingleItem extends StatelessWidget {
  final icon;
  final text;
  final ontap;
  DrawerSingleItem({this.text,this.ontap,this.icon});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: Colors.white,size: 30,),
      title:  Text(text,style: TextStyle(color: Colors.white,fontSize: 20),),
      onTap: ontap,
    );
  }
}
