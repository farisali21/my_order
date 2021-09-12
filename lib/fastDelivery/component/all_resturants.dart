import 'package:flutter/material.dart';
import 'package:my_order/fastDelivery/widgets/all_resturants_widget.dart';
import 'package:my_order/fastDelivery/widgets/fast_delivery_widget.dart';

class AllResturants extends StatelessWidget {
  const AllResturants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FastDelivery(),
          AllResturantsWidget(),
        ],
      ),
    );
  }
}
