import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class ExpireDate extends StatelessWidget {
  const ExpireDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(LocaleKeys.expire_date.tr()),
        Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: '',
              border: InputBorder.none,
            ),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.datetime,
          ),
        ),
      ],
    );
  }
}
