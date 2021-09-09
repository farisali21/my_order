import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/mainPage/components/widgets/search_bar.dart';

fastDeliveryAppBar() => AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
          'Your location',
          style: TextStyle(color: Colors.pink),
        ),
      ),
      Icon(
        Icons.location_on,
        color: Colors.pink,
      ),
    ],
    leading: IconButton(
      iconSize: 30,
      onPressed: () {},
      icon: Icon(
        Icons.menu,
        color: defaultColor,
        size: 30,
      ),
    ),
    title: SearchWidget(
      hintText: 'what are u looking for?',
      text: '',
      onChanged: (_) {},
    ));
