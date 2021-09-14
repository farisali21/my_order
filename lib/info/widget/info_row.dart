import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/info/components/rating.dart';

class RowInfo extends StatelessWidget {
  final leftWidget;
  final rightWidget;
  RowInfo({this.rightWidget,this.leftWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(26),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: kPrimaryColor,width: 1,)),
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
