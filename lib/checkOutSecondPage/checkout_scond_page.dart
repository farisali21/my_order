import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/checkOutOrderPage/widgets/components/app_bar_check_out.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/translations/locale_keys.g.dart';

import 'widgets/tab_bar_checkout.dart';

class CheckoutSecondPage extends StatelessWidget {
  const CheckoutSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: checkOutAppBar(() {
        Navigator.of(context).pop();
      }, LocaleKeys.check_out.tr(), context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TapBarCheckout(),
            Container(
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: defaultColor, padding: EdgeInsets.all(10.0)),
                  onPressed: () {},
                  child: Text(
                    'Finish Order',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
