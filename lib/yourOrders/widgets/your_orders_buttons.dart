import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

import '../controller.dart';

class YourOrdersButton extends StatelessWidget {
  final text;
  final onpressed;
  final isActive;
  YourOrdersButton({this.text,this.onpressed,this.isActive});
  @override
  Widget build(BuildContext context) {
    var controller = YourOrdersController.of(context);
    return Container(
      width: 160,
      height: 60,
      // decoration: ,
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
        ),
        elevation: 0,
        fillColor:isActive == controller.activeButton ? kPrimaryColor:kSecondaryColor,
        onPressed: onpressed,
        child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,color: isActive == controller.activeButton ? Colors.white : Color(0xFFFDE5E9),fontSize: 18),),
      ),
    );
  }
}
