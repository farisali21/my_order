import 'package:flutter/material.dart';
import 'package:my_order/checkOutSecondPage/checkout_scond_page.dart';
import 'package:my_order/constants/constants.dart';

class CheckOutButtons extends StatelessWidget {
  const CheckOutButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          checkOutButton('Check out', () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CheckoutSecondPage()));
          }),
          checkOutButton('Add Item', () {}),
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
