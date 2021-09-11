import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/fastDelivery/widgets/resturant_container.dart';

class AllResturantsWidget extends StatelessWidget {
  const AllResturantsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All returants',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ResturantContainer(),
          ResturantContainer(),
          ResturantContainer(),
          ResturantContainer(),
        ],
      ),
    );
  }
}
