import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/chooseLocation/components/choose_location_scaffold.dart';
import 'package:my_order/chooseLocation/controller.dart';

class ChooseLocation extends StatelessWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=> ChooseMapController(),
        child: ChooseLocationScaffold(),
    );
  }
}
