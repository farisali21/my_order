import 'package:flutter/material.dart';
import 'package:my_order/chooseLocation/view.dart';
import 'package:my_order/loginFormPage/login_form_page.dart';
class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    startApp();
  }
  startApp() async
  {
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ChooseLocation()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery. of(context). size. height,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,// 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color(0xffFB4E68),
              Color(0xffEB7B73)
            ], // red to yellow
            // tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child:Image.asset('assets/images/splash_image.png'),
      ),
    );
  }
}
