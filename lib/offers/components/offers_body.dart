import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/offers/widget/offer_card.dart';

class OffersBody extends StatelessWidget {
  List<Map<String, dynamic>> offers = [
    {
      'image': 'assets/images/shwarma.png',
      'discount': 10,
      'meal_name': 'koshary',
      'price': 99,
      'end': 2
    },
    {
      'image': 'assets/images/shwarma.png',
      'discount': 10,
      'meal_name': 'koshary',
      'price': 99,
      'end': 2
    },
    {
      'image': 'assets/images/shwarma.png',
      'discount': 10,
      'meal_name': 'koshary',
      'price': 99,
      'end': 2
    },
    {
      'image': 'assets/images/shwarma.png',
      'discount': 10,
      'meal_name': 'koshary',
      'price': 99,
      'end': 2
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...offers.map((offer) => OffersCard(
              image: offer['image'],
              discount: 10,
              mealName: offer['meal_name'],
              price: offer['price'],
              end: offer['end'],
              onpressed: () {},
            ))
      ],
    );
  }
}
