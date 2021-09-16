import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'controller.dart';
import 'package:easy_localization/easy_localization.dart';
class DrawerSingleItem extends StatelessWidget {
  final icon;
  final text;
  final ontap;
  final index;
  DrawerSingleItem({this.text,this.ontap,this.icon,this.index});
  @override
  Widget build(BuildContext context) {
    var controller = MainDrawerController.of(context);
            return Container(
              margin: context.locale.toString() =="en"? EdgeInsets.only(right: 15):EdgeInsets.only(left: 15),
              decoration:  controller.currentIndex== index ? BoxDecoration(
            color: Colors.black,
                borderRadius: BorderRadius.only(topRight: context.locale.toString() =="en"?Radius.circular(25):Radius.circular(0),bottomRight: context.locale.toString() =="en"?Radius.circular(25):Radius.circular(0),topLeft: context.locale.toString() =="ar"?Radius.circular(25):Radius.circular(0),bottomLeft: context.locale.toString() =="ar"?Radius.circular(25):Radius.circular(0))
            ):null,
              child: ListTile(
                leading: Icon(icon,color: Colors.white,size: 30,),
                title:  Text(text,style: TextStyle(color: Colors.white,fontSize: 20),),
                onTap: ontap,

              ),
            );

  }
}
