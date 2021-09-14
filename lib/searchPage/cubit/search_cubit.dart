import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  static SearchCubit of(context) => BlocProvider.of(context);

  final List<Map<String, dynamic>> filters = [
    {
      'index': 0,
      'title': 'Shawerma',
    },
    {
      'index': 1,
      'title': 'soup',
    },
    {
      'index': 2,
      'title': 'Thai',
    },
    {
      'index': 3,
      'title': 'waraps',
    },
    {
      'index': 4,
      'title': 'Street Food',
    },
    {
      'index': 5,
      'title': 'Waffiels',
    },
  ];

  int currentIndex = -1;
  List<bool> chossenFilter = [];

  void setChosseFilterState() {
    for (int i = 0; i < filters.length; i++) {
      chossenFilter.insert(i, false);
    }
  }

  void resetAllFilters() {
    chossenFilter.clear();
    for (int i = 0; i < filters.length; i++) {
      chossenFilter.insert(i, false);
    }
    emit(SearchRebuild());
  }

  void setIndex(int index) {
    currentIndex = index;
    emit(SearchRebuild());
  }

  void changeBool(bool currentState) {
    chossenFilter[currentIndex] = currentState;
    emit(SearchRebuild());
  }
}
