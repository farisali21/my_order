import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderInitial());

  static OrderCubit of(context) => BlocProvider.of(context);

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

  void addOneItem() {}

  void removeOneItem() {}

  void deleteItem() {}

  void totalPriceOfOneType() {}

  void foodName() {}

  void spicialService() {}

  void deliveryPrice() {}

  void totalPriceForAll() {}

  void checkOut() {}

  void addItem() {}
}
