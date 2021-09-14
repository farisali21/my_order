import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/cuisinesFilters/components/cuisines_app_bar.dart';
import 'package:my_order/cuisinesFilters/cubit/cuisinesfilters_cubit.dart';
import 'package:my_order/cuisinesFilters/components/cuisines_filters.dart';

class CuisinesFiltersPage extends StatelessWidget {
  const CuisinesFiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CuisinesfiltersCubit()..setChosseFilterState(),
      child: BlocBuilder<CuisinesfiltersCubit, CuisinesfiltersState>(
        builder: (context, state) {
          final controller = CuisinesfiltersCubit.of(context);
          return Scaffold(
            appBar: cuisinesAppBar(context, controller.resetAllFilters),
            body: PopularFilter(),
          );
        },
      ),
    );
  }
}
