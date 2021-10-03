import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/checkOutOrderPage/widgets/components/app_bar_check_out.dart';
import 'package:my_order/checkOutSecondPage/checkout_scond_page.dart';
import 'package:my_order/checkoutFirstPage/text_form_field_checkout.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class CheckoutFirstPage extends StatelessWidget {
  const CheckoutFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: checkOutAppBar(() {
        Navigator.of(context).pop();
      }, LocaleKeys.check_out.tr(), context),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textFormFieldCheckout(TextInputType.name,
                      LocaleKeys.full_name.tr(), SizedBox()),
                  textFormFieldCheckout(TextInputType.number,
                      LocaleKeys.phone_number.tr(), SizedBox()),
                  textFormFieldCheckout(
                    TextInputType.name,
                    LocaleKeys.address.tr(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.location_on,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: defaultColor,
                            padding: const EdgeInsets.all(10.0),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CheckoutSecondPage()));
                          },
                          child: Text(
                            LocaleKeys.next_button.tr(),
                            style: TextStyle(fontSize: 18),
                          ))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
