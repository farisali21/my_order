import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'controller.dart';
import 'drawer_items.dart';

class DrawerBody extends StatelessWidget {
  final index;
  DrawerBody({this.index});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MainDrawerController()..currentIndex=index,
        child: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xffEF4760),
                  Color(0xffE27971)
                ], // red to yellow
                // tileMode: TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: DrawerItems(),
          ),
        ));
  }
}
