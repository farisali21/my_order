import 'package:flutter/material.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:my_order/vouchers/widget/voucher_button.dart';

import '../controller.dart';
import 'package:easy_localization/easy_localization.dart';
class RowButtons extends StatelessWidget {
  List<Map<String,dynamic>> buttons = [
    {
      'index':0,
      'text':LocaleKeys.vouchers_active.tr()
    },
    {
      'index':1,
      'text':LocaleKeys.vouchers_used.tr(),
    },
    {
      'index':2,
      'text':LocaleKeys.vouchers_expired.tr()
    },
  ];
  @override
  Widget build(BuildContext context) {
    var controller = VoucherController.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...buttons.map((button) => VoucherButton(index:button['index'] ,text: button['text'],onpressed: (){
          controller.setIndex(button['index']);
        },))
      ],
    );
  }
}
