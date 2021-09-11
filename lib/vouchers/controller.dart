import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/vouchers/state.dart';

class VoucherController extends Cubit<VoucherState>
{
  VoucherController() : super(VoucherInit());
  static VoucherController of(context) => BlocProvider.of(context);
  int currentIndex = 0;
  void setIndex(int index)
  {
    currentIndex = index;
    emit(VoucherInit());
  }

}