import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:my_order/chooseLocation/view.dart';
import 'package:my_order/core/user_credintial.dart';
import 'package:my_order/loginPage/login_page.dart';
import 'package:my_order/main.dart';
import 'package:my_order/mainPage/view.dart';
import 'package:my_order/models/auth_model.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startApp();
  }

  startApp() async {
    await Future.delayed(Duration(seconds: 2));
    if (Hive.box(userDetails).containsKey('email')) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ChooseLocation()));
      return;
    }
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment
                .bottomCenter, // 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color(0xffFB4E68),
              Color(0xffEB7B73)
            ], // red to yellow
            // tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child: Image.asset('assets/images/splash_image.png'),
      ),
    );
  }
}
