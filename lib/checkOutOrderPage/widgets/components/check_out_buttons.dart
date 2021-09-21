import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/checkOutSecondPage/checkout_scond_page.dart';
import 'package:my_order/checkoutFirstPage/check_out_first_page.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class CheckOutButtons extends StatelessWidget {
  const CheckOutButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          checkOutButton(LocaleKeys.check_out.tr(), () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CheckoutFirstPage()));
          }),
          checkOutButton(LocaleKeys.add_item.tr(), () {}),
        ],
      ),
    );
  }

  Widget checkOutButton(title, void onpressed()) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: defaultColor),
        onPressed: onpressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
