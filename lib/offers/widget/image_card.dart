import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class ImageCard extends StatelessWidget {
  final image;
  final discount;
  ImageCard({this.discount,this.image});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180,
          height: 120,
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          right: 0,
          top: 15,
          child: Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: Center(
                child: Text(
                  '-$discount%',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ],
    );
  }
}
