import 'package:flutter/material.dart';
import 'package:my_order/addOrderToCart/widgets/chosseSize/meal_size_widget.dart';

class ChosseSize extends StatelessWidget {
  const ChosseSize({Key? key}) : super(key: key);

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
          height: 140,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => MealSize(),
          ),
        ),
      ],
    );
  }
}
