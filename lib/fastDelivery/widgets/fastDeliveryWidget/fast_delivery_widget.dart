import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/fastDelivery/widgets/fastDeliveryWidget/fast_delivery_images.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class FastDelivery extends StatelessWidget {
  const FastDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            LocaleKeys.fast_delivery.tr(),
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        FastFoodImages(),
      ],
    );
  }
}
