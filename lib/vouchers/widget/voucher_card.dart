import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/vouchers/widget/voucher_left.dart';
import 'package:my_order/vouchers/widget/voucher_right.dart';

class VoucherCard extends StatelessWidget {
  final leftText;
  final code;

  VoucherCard({this.code, this.leftText});

  @override
  Widget build(BuildContext context) {
    double kWidthOfScreen = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: kPrimaryColor, width: 1)),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 35),
        width: kWidthOfScreen,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: kPrimaryColor, width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VoucherLeft(
              text: leftText,
            ),
            // Container(height: 80, child: VerticalDivider(color: Colors.red)),
            VoucherRight(
              code: code,
            ),
          ],
        ),
      ),
    );
  }
}
