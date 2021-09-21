import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:my_order/checkOutOrderPage/widgets/components/app_bar_check_out.dart';
import 'package:my_order/checkOutOrderPage/widgets/components/check_out_buttons.dart';
import 'package:my_order/checkOutOrderPage/widgets/orderDetails/order_details.dart';
import 'package:my_order/checkOutOrderPage/widgets/orderItem/orders_list.dart';
import 'package:my_order/mainPage/view.dart';
import 'package:my_order/translations/locale_keys.g.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> onBack(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage(),),);
      return new Future.value(true);
    }
    return WillPopScope(
        onWillPop:onBack ,
        child: Scaffold(
          appBar: checkOutAppBar((){}, LocaleKeys.order_app_bar.tr(), context),
          body: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  OrderList(),
                  OrderDetails(),
                  CheckOutButtons(),
                ],
              ),
            ),
          ),
        ));
  }
}
