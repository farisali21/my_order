import 'package:flutter/material.dart';
import 'package:my_order/addOrderToCart/widgets/chosseSize/meal_size_widget.dart';
import 'package:my_order/addOrderToCart/widgets/extrasWidget/meal_extra_widget.dart';

class ChosseExtras extends StatelessWidget {
  const ChosseExtras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Extras  ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '(Optional)',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) => MealExtra(),
          ),
        ),
      ],
    );
  }
}
