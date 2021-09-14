import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/info/components/rating.dart';
import 'package:my_order/info/widget/info_row.dart';
import 'package:my_order/info/widget/left_text.dart';
import 'package:my_order/info/widget/right_text.dart';

class InfoBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowInfo(
          leftWidget: Rating(
            numberOfStars: 4.0,
          ),
          rightWidget: RightText(
            text: '2100 ratings',
          ),
        ),
        RowInfo(
        leftWidget:LeftText(text: 'Restaurant area',icon: Icons.location_on,),
        rightWidget: RightText(
          text: 'Masaken elshanawy',
        ),
      ),
      RowInfo(
        leftWidget: LeftText(icon: Icons.access_time,text: 'Opening times',),
        rightWidget: RightText(
          text: '9:00 AM - 2:00 PM',
        ),
      ),
      RowInfo(
        leftWidget: LeftText(icon: Icons.account_balance_wallet,text: 'Minimum order',),
        rightWidget: RightText(
          text: 'EGP 15.00',
        ),
      ),
        RowInfo(
          leftWidget: LeftText(icon: Icons.account_balance_wallet,text: 'Delivery fee',),
          rightWidget: RightText(
            text: 'EGP 4.00',
          ),
        ),
        RowInfo(
          leftWidget: LeftText(icon: Icons.warning,text: 'Pre-order',),
          rightWidget: RightText(
            text: 'No',
          ),
        ),
        RowInfo(
          leftWidget: LeftText(icon: Icons.credit_card,text: 'Payment options',),
          rightWidget: Row(
            children: [
              Icon(FontAwesomeIcons.ccMastercard),
              SizedBox(width: 8,),
              Icon(FontAwesomeIcons.ccVisa),
              SizedBox(width: 8,),
              Icon(FontAwesomeIcons.moneyBill),
              SizedBox(width: 8,),

            ],
          ),
        ),
      ],
    );
  }
}
