import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/fastDelivery/widgets/allRestaurentWidget/resturant_container.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class AllResturantsWidget extends StatelessWidget {
  const AllResturantsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.all_resturant.tr(),
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ResturantContainer(),
          ResturantContainer(),
          ResturantContainer(),
          ResturantContainer(),
        ],
      ),
    );
  }
}
