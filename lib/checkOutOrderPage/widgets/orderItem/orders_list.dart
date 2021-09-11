import 'package:flutter/material.dart';
import 'package:my_order/checkOutOrderPage/widgets/orderItem/order_item.dart';
import 'package:my_order/constants/constants.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.75,
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => OrderItem(),
          ),
        ),
      ],
    );
  }
}
