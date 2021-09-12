import 'package:flutter/material.dart';
import 'package:my_order/checkOutOrderPage/widgets/components/app_bar_check_out.dart';
import 'package:my_order/checkOutSecondPage/checkout_scond_page.dart';
import 'package:my_order/checkoutFirstPage/text_form_field_checkout.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/userDetailsPage/widgets/text_form_field_user_details.dart';

class CheckoutFirstPage extends StatelessWidget {
  const CheckoutFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: checkOutAppBar('Check out', context),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textFormFieldCheckout(
                      TextInputType.name, 'Full name', SizedBox()),
                  textFormFieldCheckout(
                      TextInputType.number, 'PhoneNumber', SizedBox()),
                  textFormFieldCheckout(
                    TextInputType.name,
                    'Address',
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
                            'Next',
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
