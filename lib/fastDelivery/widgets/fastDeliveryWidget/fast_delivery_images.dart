import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/widgets/specialOffer/special_offer_item.dart';

import 'fast_delivery_offer.dart';

class FastFoodImages extends StatelessWidget {
  const FastFoodImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FastDeiveryOffer(
              imageUrl: 'assets/images/check.png',
              title: 'Shawerma Snadwitch',
              deliveryPrice: 'Delivery Egp 15',
              foodType: 'Shawerma snadwitch',
            ),
            FastDeiveryOffer(
              imageUrl: 'assets/images/pizza.png',
              title: 'Pizza Margerita',
              deliveryPrice: 'Delivery Egp 30',
              foodType: 'Pizza',
            ),
          ],
        ),
      ),
    );
  }
}
