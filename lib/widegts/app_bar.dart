import 'package:flutter/material.dart';

loginAppBar(actionsList, String title, void onpressed()) => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: actionsList,
      leading: IconButton(
        alignment: Alignment.center,
        iconSize: 30,
        onPressed: onpressed,
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 37,
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'OpenSans',
          fontSize: 23.0,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.end,
      ),
    );
