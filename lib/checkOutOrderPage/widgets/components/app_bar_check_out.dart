import 'package:flutter/material.dart';

checkOutAppBar(void onPressedIcon(),title, context) => AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 0,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: onPressedIcon, icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 30,
      ),),
      title: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
