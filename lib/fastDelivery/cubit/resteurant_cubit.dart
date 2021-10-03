import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'resteurant_state.dart';

class ResteurantCubit extends Cubit<ResteurantState> {
  ResteurantCubit() : super(ResteurantInitial());

  void fetchItemsFastDelivery() {}

  void fetchItemsRestaurants() {}

  void restaurantReview() {}
}
