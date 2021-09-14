import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/searchPage/component/search_app_bar.dart';
import 'package:my_order/searchPage/component/search_body.dart';
import 'package:my_order/searchPage/cubit/search_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit()..setChosseFilterState(),
      child: Scaffold(
        appBar: searchAppBar(context),
        body: SearchBoody(),
      ),
    );
  }
}
