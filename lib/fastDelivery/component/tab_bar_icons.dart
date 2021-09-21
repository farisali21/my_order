import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/fastDelivery/component/all_resturants.dart';
import 'package:my_order/translations/locale_keys.g.dart';

import 'view_all_restaurant_button.dart';

class ButtonsTapBarFastDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          ButtonsTabBar(
            backgroundColor: kPrimaryColor,
            unselectedBackgroundColor: Colors.pink[200],
            unselectedLabelStyle: TextStyle(color: Colors.white),
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                icon: Icon(Icons.done_all_rounded),
                text: LocaleKeys.all_tab_bar.tr(),
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.cheese),
                text: LocaleKeys.crepe_tab_bar.tr(),
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.pizzaSlice),
                text: LocaleKeys.pizza_tab_bar.tr(),
              ),
              Tab(
                icon: Icon(Icons.cake),
                text: LocaleKeys.sweets_tab_bar.tr(),
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.hamburger),
                text: LocaleKeys.sanwitch_tab_bar.tr(),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                AllResturants(),
                Center(
                  child: Icon(Icons.directions_car),
                ),
                Center(
                  child: Icon(Icons.directions_transit),
                ),
                Center(
                  child: Icon(Icons.directions_bike),
                ),
                Center(
                  child: Icon(Icons.directions_car),
                ),
              ],
            ),
          ),
          ViewAllRestaurantButton(),
        ],
      ),
    );
  }
}
