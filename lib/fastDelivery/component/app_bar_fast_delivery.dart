import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/mainPage/components/widgets/search_bar.dart';

fastDeliveryAppBar(context) => AppBar(
    backgroundColor: Colors.transparent,
    titleSpacing: 0,
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          iconSize: 20,
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        Expanded(
          child: SearchWidget(
            hintText: 'what are u looking for?',
            text: '',
            onChanged: (_) {},
          ),
        ),
        Text(
          'Your location',
          style: TextStyle(
              color: Colors.pink, fontSize: 12, fontWeight: FontWeight.normal),
        ),
        Icon(
          Icons.location_on,
          color: Colors.pink,
        ),
      ],
    ));
