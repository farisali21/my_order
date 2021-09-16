import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:easy_localization/easy_localization.dart';
class VoucherRight extends StatelessWidget {
  final code;
  VoucherRight({this.code});
  @override
  Widget build(BuildContext context) {
    double kWidthOfScreen = MediaQuery.of(context).size.width;
    return Container(
      width: kWidthOfScreen * 0.42,
      padding:
      EdgeInsets.symmetric(vertical: 30, horizontal: 5),
      child: Center(
        child: Column(
          children: [
            Text(
              'Get your Voucher',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text('write code $code',style: TextStyle(color: Colors.grey,fontSize: 14,),textAlign: TextAlign.center,),
          ],
        ),
      ),
      decoration: BoxDecoration(
        border: context.locale.toString() =="en" ?Border(
          left: BorderSide(color: kPrimaryColor, width: 2),
        ):Border(
          right: BorderSide(color: kPrimaryColor, width: 2),
        ),
      ),
    );
  }
}
