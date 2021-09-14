import 'package:flutter/material.dart';
import 'package:my_order/drawerAppbar/drawerAppBar.dart';
import 'package:my_order/info/components/info_body.dart';

class InfoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerAppBar(IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back,color: Colors.black,size: 28,)), 'Information'),
      body: InfoBody(),
    );
  }
}
