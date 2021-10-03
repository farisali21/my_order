import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/checkOutOrderPage/cubit/order_cubit.dart';
import 'package:my_order/checkOutOrderPage/widgets/orderItem/order_item.dart';

class OrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        final controller = OrderCubit.of(context);
        return Container(
          height: MediaQuery.of(context).size.height * 0.45,
          child: ListView(
            children: [
              ...controller.filters.map((e) => OrderItem()),
            ],
          ),
        );
      },
    );
  }
}
