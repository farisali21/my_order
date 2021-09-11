import 'package:flutter/material.dart';
import 'package:my_order/vouchers/widget/voucher_button.dart';

import '../controller.dart';

class RowButtons extends StatelessWidget {
  List<Map<String,dynamic>> buttons = [
    {
      'index':0,
      'text':'Active'
    },
    {
      'index':1,
      'text':'Used',
    },
    {
      'index':2,
      'text':'Expired'
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
