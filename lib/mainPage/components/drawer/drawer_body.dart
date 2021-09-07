import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/drawer/drawer_items.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,// 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color(0xffEF4760),
              Color(0xffE4736F)
            ], // red to yellow
            // tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child:DrawerItems(),
      ),
    );
  }
}
