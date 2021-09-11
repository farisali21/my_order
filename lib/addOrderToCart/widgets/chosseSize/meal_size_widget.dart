import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/addOrderToCart/cubit/additem_cubit.dart';
import 'package:my_order/constants/constants.dart';

class MealSize extends StatelessWidget {
  const MealSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdditemCubit, AdditemState>(
      builder: (context, state) {
        final controller = AdditemCubit.of(context);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      controller.changeColorOfChosseSize();
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: 25,
                      height: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: controller.colorBoolOfChosseSize
                            ? defaultColor
                            : Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Large',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Text(
                '20EGP',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
