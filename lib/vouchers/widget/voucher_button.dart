import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';

import '../controller.dart';

class VoucherButton extends StatelessWidget {
  final text;
  final index;
  final onpressed;

  VoucherButton({this.index, this.onpressed, this.text});

  @override
  Widget build(BuildContext context) {
    var controller = VoucherController.of(context);
    double kWidthOfScreen = MediaQuery.of(context).size.width * 0.27;
    return BlocBuilder(
        bloc: controller,
        builder: (context, state) {
          return Container(
            width: kWidthOfScreen,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
              boxShadow: controller.currentIndex == index ?[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]:[],
            ),
            child: RawMaterialButton(
              onPressed: onpressed,
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: controller.currentIndex == index
                      ? kPrimaryColor
                      : Colors.black,
                ),
              ),
              shape: OutlineInputBorder(
                borderSide: BorderSide(
                    color: controller.currentIndex == index
                        ? kPrimaryColor
                        : Colors.black,
                    width: 2),
              ),
            ),
          );
        });
  }
}
