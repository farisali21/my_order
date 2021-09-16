import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class CardDetails extends StatelessWidget {
  final mealName;
  final price;
  final end;
  final onpressed;
  CardDetails({this.end,this.onpressed,this.mealName,this.price});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mealName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text('${LocaleKeys.price.tr()} $price EGP'),
        Text(
          '${LocaleKeys.offers_will_end.tr()} $end ',
          style: TextStyle(color: kPrimaryColor),
        ),
        Container(
          // width: 100,
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: RawMaterialButton(
            onPressed: onpressed,
            child: Text(
              LocaleKeys.offers_more_details.tr(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
