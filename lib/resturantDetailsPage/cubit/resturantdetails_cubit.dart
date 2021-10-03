import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'resturantdetails_state.dart';

class ResturantdetailsCubit extends Cubit<ResturantdetailsState> {
  ResturantdetailsCubit() : super(ResturantdetailsInitial());

  void restaurantReview() {}

  void mealDetails() {}
}
