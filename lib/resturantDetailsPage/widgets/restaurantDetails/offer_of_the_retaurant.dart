import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class RestaurantOffer extends StatelessWidget {
  const RestaurantOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.local_offer,
          color: defaultColor,
        ),
        Text(
          'Offer of the restaurant',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: defaultColor,
          ),
        ),
      ],
    );
  }
}
