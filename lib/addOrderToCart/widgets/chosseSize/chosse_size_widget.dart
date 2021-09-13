import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/addOrderToCart/cubit/additem_cubit.dart';
import 'package:my_order/addOrderToCart/widgets/chosseSize/meal_size_widget.dart';

class ChosseSize extends StatelessWidget {
  final List<Map<String, dynamic>> _chosseSize = [
    {
      'index': 0,
      'title': 'Large',
      'price': 99,
    },
    {
      'index': 1,
      'title': 'mediam',
      'price': 99,
    },
    {
      'index': 2,
      'title': 'small',
      'price': 99,
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
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  ..._chosseSize.map(
                    (size) => MealSize(
                      title: size['title'].toString(),
                      price: size['price'].toString(),
                      index: size['index'],
                      ontab: () {
                        controller.setIndexOfChosseSize(size['index']);
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
