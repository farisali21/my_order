import 'package:flutter/material.dart';
import 'package:my_order/widegts/button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Choose location',),
          Row(
            children: [
              Icon(Icons.location_on,color: Colors.black,),
              Text('Street',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ],
          ),
          MainButton(onpressed: (){},text: 'Choose Location',)
        ],
      ),
    );
  }
}
