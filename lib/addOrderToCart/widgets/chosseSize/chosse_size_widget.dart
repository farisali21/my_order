import 'package:flutter/material.dart';
import 'package:my_order/addOrderToCart/widgets/chosseSize/meal_size_widget.dart';

class ChosseSize extends StatelessWidget {
  final List<Map<String, dynamic>> chosseSize = [
    {
      'title': 'Large',
      'price': 99,
    },
    {
      'title': 'mediam',
      'price': 99,
    },
    {
      'title': 'small',
      'price': 99,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Chosse Size',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.08,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              ...chosseSize.map((size) => MealSize(
                    title: size['title'].toString(),
                    price: size['price'].toString(),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
