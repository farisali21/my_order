import 'package:flutter/material.dart';
import 'package:my_order/checkOutOrderPage/widgets/components/app_bar_check_out.dart';
import 'package:my_order/checkOutOrderPage/widgets/components/check_out_buttons.dart';
import 'package:my_order/checkOutOrderPage/widgets/orderDetails/order_details.dart';
import 'package:my_order/checkOutOrderPage/widgets/orderItem/orders_list.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: checkOutAppBar('Orders', context),
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
    );
  }
}
