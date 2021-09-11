import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/addOrderToCart/cubit/additem_cubit.dart';

import '../controller_button.dart';
import 'meal_name.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MealName(),
        Column(
          children: [
            BlocBuilder<AdditemCubit, AdditemState>(
              builder: (context, state) {
                final controller = AdditemCubit.of(context);
                return Row(
                  children: [
                    controllerButton('-', controller.removeItem),
                    SizedBox(width: 8),
                    Text(
                      controller.counter.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 8),
                    controllerButton('+', controller.addItem),
                  ],
                );
              },
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.pink,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                '20EGP',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }
}
