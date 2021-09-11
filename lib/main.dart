import 'package:flutter/material.dart';
import 'package:my_order/addOrderToCart/order_page.dart';
import 'package:my_order/checkOutOrderPage/check_out_page.dart';
import 'package:my_order/checkOutSecondPage/checkout_scond_page.dart';
import 'package:my_order/checkoutFirstPage/check_out_first_page.dart';
import 'package:my_order/resturantDetailsPage/resturant_details_page.dart';
import 'package:my_order/splashScreen/view.dart';

import 'loginFormPage/login_form_page.dart';

// import 'loginFormPage/login_form_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
