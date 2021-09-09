import 'package:flutter/material.dart';
import 'package:my_order/fastDelivery/widgets/fast_delivery_images.dart';

class FastDelivery extends StatelessWidget {
  const FastDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            'Fast Delivery',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        FastFoodImages(),
      ],
    );
  }
}
