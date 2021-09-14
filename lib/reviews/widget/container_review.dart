import 'package:flutter/material.dart';

class ContainerReview extends StatelessWidget {
  final leftWidget;
  final rightWidget;
  ContainerReview({this.leftWidget,this.rightWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
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
