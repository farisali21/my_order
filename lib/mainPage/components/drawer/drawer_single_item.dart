import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/mainPage/components/drawer/controller.dart';

class DrawerSingleItem extends StatelessWidget {
  final icon;
  final text;
  final ontap;
  final index;
  DrawerSingleItem({this.text,this.ontap,this.icon,this.index});
  @override
  Widget build(BuildContext context) {
    var controller = MainDrawerController.of(context);

    return BlocBuilder(
        bloc: controller,
        builder: (context,state)
        {
            return Container(
              margin: EdgeInsets.only(right: 15),
              decoration:  controller.currentIndex== index ? BoxDecoration(
            color: Colors.black,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25))
            ):null,
              child: ListTile(
                leading: Icon(icon,color: Colors.white,size: 30,),
                title:  Text(text,style: TextStyle(color: Colors.white,fontSize: 20),),
                onTap: ontap,

              ),
            );
        }
    );
  }
}
