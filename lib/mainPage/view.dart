import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../drawer/drawer_body.dart';
import 'package:my_order/mainPage/components/main_page_body.dart';

import '../drawer/controller.dart';
import 'components/widgets/app_bar_main_page.dart';



class MainPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Future<bool> onBack(){
      bool answer =true;
      showDialog(
          context: context,
          builder: (context) =>AlertDialog(
            title: Text('Do you really want to exit the app'),
            actions: [
              FlatButton(onPressed: (){
                answer=true;
                Navigator.pop(context);
              }, child: Text('Yes')),
              FlatButton(onPressed: (){
                Navigator.pop(context);

              }, child: Text('no')),
            ],
          )
      );
      return new Future.value(answer);

    }
    return WillPopScope(
        onWillPop:onBack ,
        child: Scaffold(      key: _scaffoldKey,
      appBar: mainPageAppBar((){ _scaffoldKey.currentState!.openDrawer();}),
      drawer: DrawerBody(index: 0,),
      body: MainPageBody(),
    ));
  }
}
