import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/translations/locale_keys.g.dart';

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
          LocaleKeys.offer_of_restaurant.tr(),
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
