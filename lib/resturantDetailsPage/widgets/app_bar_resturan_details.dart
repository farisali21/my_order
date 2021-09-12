import 'package:flutter/material.dart';

restaurantDetails(context) => AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 0,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back,
        color: Colors.black,
        size: 30,),
    ),);
