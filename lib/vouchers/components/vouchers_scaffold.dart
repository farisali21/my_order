import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/drawer/drawer_body.dart';
import 'package:my_order/drawerAppbar/drawerAppBar.dart';
import 'package:my_order/mainPage/view.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:my_order/vouchers/components/vouchers_body.dart';
import 'package:easy_localization/easy_localization.dart';
class VouchersScaffold extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Future<bool> onBack(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage()));
      return new Future.value(true);
    }
    return WillPopScope(
        onWillPop:onBack ,
        child: Scaffold(
      key: _scaffoldKey,
      appBar: drawerAppBar(IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: kPrimaryColor,
            size: 35,
          )), LocaleKeys.drawer_vouchers.tr()),
      body: VouchersBody(),
      drawer: DrawerBody(index: 7,),
    ));
  }
}
