import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/mainPage/components/drawer/drawer_body.dart';
import 'package:my_order/mainPage/components/main_page_body.dart';

import 'components/drawer/controller.dart';
import 'components/widgets/app_bar_main_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainPageAppBar(),
      drawer: BlocProvider(
          create: (context) => MainDrawerController(),
          child: DrawerBody()
      ) ,
      body: MainPageBody(),
    );
  }
}
