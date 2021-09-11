import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/yourOrders/components/order_details.dart';
import 'package:my_order/yourOrders/components/orders_button_row.dart';
import 'package:my_order/yourOrders/controller.dart';
import 'package:my_order/yourOrders/widgets/order_card.dart';
import 'package:my_order/yourOrders/widgets/your_orders_buttons.dart';

class YourOrdersBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = YourOrdersController.of(context);
    return BlocBuilder(
        bloc: controller,
        builder: (context, state) {
          return ListView(
            children: [
              OrdersButtonRow(),
              ...controller.activeButton
                  ? recentOrders.map((order) => OrderCard(
                        restaurantName: order['restaurant_name'],
                        price: order['price'],
                        address: order['address'],
                        date: order['date'],
                        mealName: order['meal_name'],
                      ))
                  : oldOrders.map((order) => OrderCard(
                        restaurantName: order['restaurant_name'],
                        price: order['price'],
                        address: order['address'],
                        date: order['date'],
                        mealName: order['meal_name'],
                      )),
            ],
          );
        });
  }
}
