import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/cuisinesFilters/cubit/cuisinesfilters_cubit.dart';
import 'package:my_order/cuisinesFilters/widgets/filters_widget.dart';

class PopularFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CuisinesfiltersCubit, CuisinesfiltersState>(
      builder: (context, state) {
        final controller = CuisinesfiltersCubit.of(context);
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: [
                ...controller.filters.map(
                  (filter) => filterButton(
                    index: filter['index'],
                    selected: controller.chossenFilter,
                    title: filter['title'],
                    onselected: () {
                      controller.setIndex(filter['index']);
                    },
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: defaultColor,
                ),
                onPressed: () {},
                child: Text('Apply'),
              ),
            )
          ],
        );
      },
    );
  }
}
