import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/addOrderToCart/cubit/additem_cubit.dart';
import 'package:my_order/constants/constants.dart';

class MealSize extends StatelessWidget {
  final String title;
  final String price;
  final VoidCallback ontab;
  final int index;

  const MealSize({
    Key? key,
    required this.title,
    required this.price,
    required this.ontab,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdditemCubit, AdditemState>(
      builder: (context, state) {
        final controller = AdditemCubit.of(context);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: ontab,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 25,
                      height: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: controller.currentIndexOfChosseSize == index
                            ? defaultColor
                            : Colors.white,
                        border: Border.all(
                          color: controller.currentIndexOfChosseSize == index
                              ? defaultColor
                              : Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(
                  '$price EGP',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
