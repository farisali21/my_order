import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/constants/constants.dart';
class VoucherLeft extends StatelessWidget {
  final text;
  VoucherLeft({this.text});
  @override
  Widget build(BuildContext context) {
    double kWidthOfScreen = MediaQuery.of(context).size.width;

    return Container(
      width: kWidthOfScreen * 0.42,
      padding:
      EdgeInsets.symmetric(vertical: 30, horizontal: 5),
      child: Center(
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.tag,
              color: kPrimaryColor,
            ),
            SizedBox(width: 5,),
            Flexible(
                child: Text(
                  text,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
