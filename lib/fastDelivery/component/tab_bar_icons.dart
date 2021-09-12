import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/fastDelivery/component/all_resturants.dart';

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
                text: "All  ",
              ),
              Tab(
                icon: Icon(Icons.fastfood),
                text: "crepe  ",
              ),
              Tab(
                icon: Icon(Icons.local_pizza),
                text: "Pizza",
              ),
              Tab(
                icon: Icon(Icons.cake),
                text: "sweets  ",
              ),
              Tab(
                icon: Icon(Icons.fastfood_outlined),
                text: "sandwitch",
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