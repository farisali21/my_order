import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/addOrderToCart/cubit/additem_cubit.dart';
import 'package:my_order/addOrderToCart/widgets/chosseSize/meal_size_widget.dart';
import 'package:my_order/addOrderToCart/widgets/extrasWidget/meal_extra_widget.dart';

class ChosseExtras extends StatelessWidget {
  final List<Map<String, dynamic>> _chosseExtras = [
    {
      'index': 0,
      'title': 'Liver',
      'price': 20,
    },
    {
      'index': 1,
      'title': 'Chicken',
      'price': 30,
    },
    {
      'index': 2,
      'title': 'meat',
      'price': 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdditemCubit, AdditemState>(
      builder: (context, state) {
        final controller = AdditemCubit.of(context);
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
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  ..._chosseExtras.map(
                    (size) => MealExtra(
                      title: size['title'].toString(),
                      price: size['price'].toString(),
                      index: size['index'],
                      ontab: () {
                        controller.setIndexOfChosseExtras(size['index']);
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
