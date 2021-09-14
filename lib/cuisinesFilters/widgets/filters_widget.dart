import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/cuisinesFilters/cubit/cuisinesfilters_cubit.dart';

Widget filterButton({
  required int index,
  required List<bool> selected,
  required String title,
  required VoidCallback onselected,
}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: BlocBuilder<CuisinesfiltersCubit, CuisinesfiltersState>(
      builder: (context, state) {
        final controller = CuisinesfiltersCubit.of(context);
        return FilterChip(
          checkmarkColor: Colors.white,
          selectedColor: defaultColor,
          backgroundColor: Colors.pink[200],
          label: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          selected: selected[index],
          onSelected: (bool value) {
            onselected();
            controller.changeBool(value);
          },
        );
      },
    ),
  );
}
