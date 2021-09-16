import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/info/components/rating.dart';
import 'package:my_order/info/widget/info_row.dart';
import 'package:my_order/info/widget/left_text.dart';
import 'package:my_order/info/widget/right_text.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
            text: '2100 ${LocaleKeys.info_reviews.tr()}',
          ),
        ),
        RowInfo(
        leftWidget:LeftText(text: LocaleKeys.info_restaurant_area.tr(),icon: Icons.location_on,),
        rightWidget: RightText(
          text: 'Masaken elshanawy',
        ),
      ),
      RowInfo(
        leftWidget: LeftText(icon: Icons.access_time,text: LocaleKeys.info_opening_times.tr(),),
        rightWidget: RightText(
          text: '9:00 AM - 2:00 PM',
        ),
      ),
      RowInfo(
        leftWidget: LeftText(icon: Icons.account_balance_wallet,text: LocaleKeys.info_minimum.tr(),),
        rightWidget: RightText(
          text: 'EGP 15.00',
        ),
      ),
        RowInfo(
          leftWidget: LeftText(icon: Icons.account_balance_wallet,text: LocaleKeys.info_delivery.tr(),),
          rightWidget: RightText(
            text: 'EGP 4.00',
          ),
        ),
        RowInfo(
          leftWidget: LeftText(icon: Icons.warning,text: LocaleKeys.info_pre_order.tr(),),
          rightWidget: RightText(
            text: 'No',
          ),
        ),
        RowInfo(
          leftWidget: LeftText(icon: Icons.credit_card,text: LocaleKeys.info_payment_options.tr(),),
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
