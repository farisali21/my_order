import 'package:flutter/material.dart';
import 'package:my_order/checkOutOrderPage/check_out_page.dart';
import 'package:my_order/constants/constants.dart';

Widget addToCartButton(context) {
  return Container(
    padding: EdgeInsets.all(4),
    margin: EdgeInsets.all(5),
    width: double.infinity,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: defaultColor,
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CheckOutPage()));
        },
        child: Text(
          'Add to cart',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
        )),
  );
}
