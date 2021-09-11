import 'package:flutter/material.dart';

drawerAppBar(var leading,String text) => AppBar(
    toolbarHeight: 80,
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    leading: leading ,
    title: Text(text,style: TextStyle(color: Colors.black,fontSize: 30),),
);