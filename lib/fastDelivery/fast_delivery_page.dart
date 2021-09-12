import 'package:flutter/material.dart';
import 'package:my_order/fastDelivery/component/app_bar_fast_delivery.dart';
import 'package:my_order/fastDelivery/component/tab_bar_icons.dart';

class FastDeliveryPage extends StatelessWidget {
  const FastDeliveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fastDeliveryAppBar(),
      body: ButtonsTapBarFastDelivery(),
    );
  }
}
