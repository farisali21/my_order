import 'package:flutter/material.dart';
import 'package:my_order/yourOrders/widgets/your_orders_buttons.dart';

import '../controller.dart';
class OrdersButtonRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var controller = YourOrdersController.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        YourOrdersButton(
          text: 'Old Orders',
          isActive: false,
          onpressed: () {
            controller.switchButton(false);
          },
        ),
        YourOrdersButton(
          text: 'Recent Orders',
          isActive: true,
          onpressed: () {
            controller.switchButton(true);
          },
        ),
      ],
    );
  }
}
