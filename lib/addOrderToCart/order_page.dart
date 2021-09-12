import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/addOrderToCart/cubit/additem_cubit.dart';
import 'package:my_order/addOrderToCart/widgets/addNotes/add_notes.dart';
import 'package:my_order/addOrderToCart/widgets/add_to_cart_button.dart';
import 'package:my_order/addOrderToCart/widgets/chosseSize/chosse_size_widget.dart';
import 'package:my_order/addOrderToCart/widgets/extrasWidget/chosse_extras_widget.dart';
import 'package:my_order/addOrderToCart/widgets/extrasWidget/meal_extra_widget.dart';
import 'package:my_order/addOrderToCart/widgets/mealDetails/meal_details.dart';
import 'package:my_order/resturantDetailsPage/widgets/app_bar_resturan_details.dart';

import 'widgets/mealDetails/meal_image.dart';

class AddOrderPage extends StatelessWidget {
  const AddOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: restaurantDetails(context),
      body: BlocProvider(
        create: (context) => AdditemCubit(),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MealImage(),
                SizedBox(height: 10),
                MealDetails(),
                ChosseSize(),
                SizedBox(height: 10),
                ChosseExtras(),
                AddNotes(),
                addToCartButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
