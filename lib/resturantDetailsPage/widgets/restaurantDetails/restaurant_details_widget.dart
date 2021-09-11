import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class RestaurantDetailsWidget extends StatelessWidget {
  const RestaurantDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Koshary Gedoo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              margin: EdgeInsets.only(right: 3),
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            Text(
              'Online',
              style: TextStyle(
                fontSize: 10,
                color: defaultColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Text(
          'Delivery:5EGP   20-30 mint    1km',
          style: TextStyle(
            fontSize: 10,
          ),
        )
      ],
    );
  }
}
