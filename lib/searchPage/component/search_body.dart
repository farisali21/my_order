import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/searchPage/component/filter_widget.dart';
import 'package:my_order/searchPage/cubit/search_cubit.dart';

class SearchBoody extends StatelessWidget {
  const SearchBoody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final controller = SearchCubit.of(context);
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Popular Search',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              Wrap(
                children: [
                  ...controller.filters.map(
                    (filter) => filterSearchButton(
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
            ],
          ),
        );
      },
    );
  }
}
