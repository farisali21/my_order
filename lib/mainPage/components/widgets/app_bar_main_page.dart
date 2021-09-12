import 'package:flutter/material.dart';

mainPageAppBar(void onpressed(), context) => AppBar(
    backgroundColor: Colors.transparent,
    titleSpacing: 0,
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          iconSize: 20,
          onPressed: onpressed,
          icon: Icon(
            Icons.menu,
            color: Colors.pink,
            size: 30,
          ),
        ),
        InkWell(
          hoverColor: Colors.white,
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.all(6),
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.pink,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Flexible(
                  child: Text(
                    'what are you looking for?',
                    overflow: TextOverflow.fade,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ],
            ),
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
