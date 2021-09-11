import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/yourOrders/state.dart';

class YourOrdersController extends Cubit<YourOrdersState> {
  YourOrdersController() : super(YourOrdersInit());

  static YourOrdersController of(context) => BlocProvider.of(context);
  bool activeButton = false;

  void switchButton(bool button) {
    if (button != activeButton) {
      activeButton = !activeButton;
      emit(YourOrdersInit());
    }
  }
}
