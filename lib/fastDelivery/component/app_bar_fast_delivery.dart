import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/cuisinesFilters/cuisines_filters_page.dart';
import 'package:my_order/widegts/search_bar.dart';
import 'package:my_order/searchPage/search_page.dart';
import 'package:my_order/translations/locale_keys.g.dart';

fastDeliveryAppBar(context) => AppBar(
    backgroundColor: Colors.transparent,
    titleSpacing: 0,
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          child: IconButton(
            padding: EdgeInsets.zero,
            iconSize: 20,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.all(6),
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
              border: Border.all(
                color: defaultColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            hoverColor: Colors.white,
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Flexible(
                  child: Text(
                    LocaleKeys.main_search_text.tr(),
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
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          child: InkWell(
            onTap: () {},
            child: FaIcon(
              FontAwesomeIcons.mugHot,
              color: defaultColor,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          child: Text(
            'El-GALLA Street',
            style: TextStyle(
                color: Colors.pink,
                fontSize: 12,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          child: Icon(
            Icons.location_on,
            color: Colors.pink,
          ),
        ),
      ],
    ));
