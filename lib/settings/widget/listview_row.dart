import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class ListViewRow1 extends StatelessWidget {
  final leftWidget;
  final rightWidget;
  ListViewRow1({this.leftWidget,this.rightWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: kPrimaryColor,width: 1))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftWidget,
          rightWidget,
        ],
      ),
    );
  }
}
