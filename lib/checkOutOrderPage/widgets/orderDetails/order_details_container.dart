import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class OrderDetailsWidget extends StatelessWidget {
  final title;
  final price;
  const OrderDetailsWidget({
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 8),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
                border: Border.all(
                  color: defaultColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Text(price),
          ),
        ],
      ),
    );
  }
}
