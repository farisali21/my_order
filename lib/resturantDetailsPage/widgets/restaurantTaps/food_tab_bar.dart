import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/resturantDetailsPage/widgets/restaurantTaps/meals_container.dart';
import 'package:my_order/resturantDetailsPage/widgets/restaurantTaps/meals_list.dart';

class FoodTapBar extends StatelessWidget {
  const FoodTapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              TabBar(
                indicatorWeight: 5,
                indicatorColor: defaultColor,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text(
                      'Koshary',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Sandwitches',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Chinkens',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'All',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    MealsContainer(),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
