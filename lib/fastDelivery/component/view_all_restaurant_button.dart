import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/resturantDetailsPage/resturant_details_page.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class ViewAllRestaurantButton extends StatelessWidget {
  const ViewAllRestaurantButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      width: MediaQuery.of(context).size.width / 1.15,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RestaurantDetailsPage(),
            ),
          );
        },
        child: Text(LocaleKeys.view_all_restaurant.tr()),
        style: ElevatedButton.styleFrom(
          primary: defaultColor,
        ),
      ),
    );
  }
}
