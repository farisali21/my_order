import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/cuisinesFilters/cubit/cuisinesfilters_cubit.dart';
import 'package:my_order/searchPage/cubit/search_cubit.dart';

Widget filterSearchButton({
  required int index,
  required List<bool> selected,
  required String title,
  required VoidCallback onselected,
}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final controller = SearchCubit.of(context);
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
