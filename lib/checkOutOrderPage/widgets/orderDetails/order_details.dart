import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/translations/locale_keys.g.dart';

import 'order_details_container.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      padding: EdgeInsets.only(bottom: 8),
      // height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.pink[300]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(70),
            child: Container(
              padding: EdgeInsets.all(6),
              // width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(70),
              ),
              child: Row(
                children: [
                  Text(
                    LocaleKeys.order_details.tr(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          OrderDetailsWidget(
            title: LocaleKeys.spicail_service.tr(),
            price: '10EGP',
          ),
          OrderDetailsWidget(
            title: LocaleKeys.delivery_price.tr(),
            price: '9.99Egp',
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 8),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: defaultColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Text('${LocaleKeys.total.tr()}: 55 EGP',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
