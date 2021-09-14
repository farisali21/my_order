import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/cuisinesFilters/cuisines_filters_page.dart';
import 'package:my_order/searchPage/search_page.dart';

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
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SearchPage()));
          },
          child: Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.all(6),
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
                border: Border.all(
                  color: defaultColor,
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
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black26,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => CuisinesFiltersPage()),
                    );
                  },
                  child: FaIcon(
                    FontAwesomeIcons.filter,
                    size: 16,
                    color: defaultColor,
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
