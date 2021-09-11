import 'package:flutter_bloc/flutter_bloc.dart';
import 'state.dart';


class MainDrawerController extends Cubit<DrawerState>
{
  MainDrawerController() : super(DrawerInit());
  static MainDrawerController of(context)=> BlocProvider.of(context);
  int currentIndex = 0;
  // void setIndex(int index)
  // {
  //   currentIndex = index;
  //   emit(DrawerChange());
  // }

}