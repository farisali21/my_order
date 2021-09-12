import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/widgets/search_bar.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
mainPageAppBar(void onpressed()) => AppBar(
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
        Expanded(
          child: SearchWidget(
            hintText: LocaleKeys.main_search_text.tr(),
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
