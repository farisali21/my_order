import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class OrderCard extends StatelessWidget {
  final restaurantName;
  final mealName;
  final date;
  final address;
  final price;
  OrderCard({this.price,this.address,this.date,this.mealName,this.restaurantName});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: kBoxDecoration,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(restaurantName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 5,),
          Text(mealName,style: TextStyle(color: Colors.grey,fontSize: 18),),
          SizedBox(height: 5,),
          Text(date,style: TextStyle(color: Colors.grey,fontSize: 18),),
          SizedBox(height: 5,),
          Text(address,style: TextStyle(color: Colors.grey,fontSize: 18),),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Price : $price',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ],
      ),
    );
  }
}
