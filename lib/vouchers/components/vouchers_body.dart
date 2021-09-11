import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/vouchers/components/row_buttons.dart';
import 'package:my_order/vouchers/widget/no_voucher_page.dart';
import 'package:my_order/vouchers/widget/voucher_card.dart';

import '../controller.dart';

class VouchersBody extends StatelessWidget {
  List<Map<String,dynamic>> activeVouchers =[];
  List<Map<String,dynamic>> usedVouchers =[
    {
      'text' : '30% Discount for any order',
      'code' :'GETCODERIGHTNOW',
    },
    {
      'text' : '30% Discount for any order',
      'code' :'GETCODERIGHTNOW',
    },
    {
      'text' : '30% Discount for any order',
      'code' :'GETCODERIGHTNOW',
    },
    {
      'text' : '30% Discount for any order',
      'code' :'GETCODERIGHTNOW',
    },
  ];
  List<Map<String,dynamic>> expiredVouchers =[];
  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> lists=[activeVouchers,usedVouchers,expiredVouchers];
    var controller = VoucherController.of(context);
    return Column(
      children: [
        SizedBox(height: 20,),
        RowButtons(),
        SizedBox(height: 20,),
        BlocBuilder(
          bloc: controller ,
          builder: (context,state)
          {
            return lists[controller.currentIndex].length ==0? NoVoucherPage() :Expanded(
              child: ListView(
                children: [
                  ...lists[controller.currentIndex].map((voucher) => VoucherCard(leftText: voucher['text'],code: voucher['code'],))
                ],
              ),
            ) ;
          },
        )
      ],
    );
  }
}
