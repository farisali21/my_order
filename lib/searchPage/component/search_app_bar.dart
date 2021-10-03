import 'package:flutter/material.dart';
import 'package:my_order/widegts/search_bar.dart';

searchAppBar(context) => AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 0,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: SearchWidget(text: '', hintText: 'What are you lookin for?'),
    );
