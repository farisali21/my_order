import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/drawer/drawer_body.dart';
import 'package:my_order/drawerAppbar/drawerAppBar.dart';
import 'package:my_order/mainPage/view.dart';
import 'package:my_order/yourOrders/components/your_orders_body.dart';
import 'package:my_order/yourOrders/controller.dart';

class YourOrdersScaffold extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Future<bool> onBack(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage()));
      return new Future.value(true);
    }
    return WillPopScope(
      onWillPop:onBack ,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: drawerAppBar(
              IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: kPrimaryColor,
                    size: 35,
                  )),
              'Orders'),
          body: BlocProvider(
              create: (context) => YourOrdersController(),
              child: YourOrdersBody()),
          drawer: DrawerBody(index: 3,),
        ),
      ),
    );
  }
}
