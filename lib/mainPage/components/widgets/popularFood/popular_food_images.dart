import 'package:flutter/material.dart';

import 'popular_food_item.dart';

class PopularFoodImages extends StatelessWidget {
  const PopularFoodImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PopularFoodItem(
              imageUrl: 'assets/images/burger.png',
              title: 'Ranch Effect Snadwitch',
              deliveryPrice: 'Delivery Egp 15',
            ),
            PopularFoodItem(
              imageUrl: 'assets/images/falafel.png',
              title: 'Foul and falafel',
              deliveryPrice: 'Delivery Egp 12',
            ),
          ],
        ),
      ),
    );
  }
}
