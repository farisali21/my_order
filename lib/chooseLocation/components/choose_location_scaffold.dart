import 'package:flutter/material.dart';
import 'package:my_order/chooseLocation/components/appBarComponents/appBar_search.dart';
import 'package:my_order/chooseLocation/components/appBarComponents/return_button.dart';
import 'package:my_order/chooseLocation/controller.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/mainPage/view.dart';
import 'package:my_order/network.dart';
import 'package:my_order/widegts/app_bar.dart';
import 'choose_location_body.dart';

class ChooseLocationScaffold extends StatefulWidget {
  const ChooseLocationScaffold({Key? key}) : super(key: key);

  @override
  _ChooseLocationScaffoldState createState() => _ChooseLocationScaffoldState();
}

class _ChooseLocationScaffoldState extends State<ChooseLocationScaffold> {
  @override
  Widget build(BuildContext context) {
    var blocController = ChooseMapController.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:ReturnButton(onpressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage()));
        },),
        centerTitle: true,
        title: AppBarSearch(),
      ),
      body:ChooseLocationBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 160.0),
        child: FloatingActionButton(
          mini: true,
          backgroundColor: Colors.white,
          onPressed: (){
            getHttp('https://maps.googleapis.com/maps/api/place/autocomplete/json?input=amoeba&location=37.76999%2C-122.44696&radius=500&strictbounds=true&types=establishment&key=AIzaSyCBtN4E2qfNz_Ek95CkjrtoZ1ps-ExRqX8');
            blocController.getMyLocation();
          },
          child: const Icon(Icons.gps_fixed,color: Color(0xFFEF4760),),
        ),
      ),
    );
  }

}
