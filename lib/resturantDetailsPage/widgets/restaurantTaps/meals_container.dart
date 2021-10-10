import 'package:flutter/material.dart';
import 'package:my_order/resturantDetailsPage/widgets/restaurantTaps/meals_list.dart';

class MealsContainer extends StatelessWidget {
  const MealsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MealsList(),
        MealsList(),
        MealsList(),
        MealsList(),
      ],
    );
  }
}
