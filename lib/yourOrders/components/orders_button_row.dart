import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/yourOrders/widgets/your_orders_buttons.dart';

import '../controller.dart';

class OrdersButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: kSecondaryColor,
      ),
      child: TabBar(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.red,
        ),
        tabs: [
          YourOrdersButton(text: 'Old Orders'),
          YourOrdersButton(text: 'Recent orders'),
        ],
      ),
    );
  }
}
