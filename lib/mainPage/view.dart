import 'package:flutter/material.dart';
import 'package:my_order/mainPage/components/drawer/drawer_body.dart';
import 'package:my_order/mainPage/components/main_page_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBody() ,
      body: MainPageBody(),
    );
  }
}
