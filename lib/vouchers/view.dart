import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/vouchers/components/vouchers_scaffold.dart';
import 'package:my_order/vouchers/controller.dart';

class VouchersPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=> VoucherController(),
        child: VouchersScaffold()
    );
  }
}
