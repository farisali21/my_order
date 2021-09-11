import 'package:flutter/material.dart';
import 'package:my_order/resturantDetailsPage/widgets/app_bar_resturan_details.dart';
import 'package:my_order/resturantDetailsPage/widgets/restaurantDetails/offer_of_the_retaurant.dart';
import 'package:my_order/resturantDetailsPage/widgets/restaurantDetails/restaurant_details_widget.dart';
import 'package:my_order/resturantDetailsPage/widgets/restaurantDetails/restaurant_review.dart';
import 'package:my_order/resturantDetailsPage/widgets/restaurantTaps/food_tab_bar.dart';

import 'widgets/restaurantDetails/restaurant_photo.dart';

class RestaurantDetailsPage extends StatelessWidget {
  const RestaurantDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: restaurantDetails(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          children: [
            RestaurantPhoto(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RestaurantDetailsWidget(),
                RestaurantReview(),
              ],
            ),
            RestaurantOffer(),
            FoodTapBar(),
          ],
        ),
      ),
    );
  }
}
