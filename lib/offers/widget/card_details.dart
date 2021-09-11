import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class CardDetails extends StatelessWidget {
  final mealName;
  final price;
  final end;
  final onpressed;
  CardDetails({this.end,this.onpressed,this.mealName,this.price});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mealName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text('Price: $price EGP'),
        Text(
          'Will end in $end days',
          style: TextStyle(color: kPrimaryColor),
        ),
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: RawMaterialButton(
            onPressed: onpressed,
            child: Text(
              'More Details',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
