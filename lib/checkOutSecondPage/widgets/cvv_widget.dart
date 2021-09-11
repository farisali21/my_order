import 'package:flutter/material.dart';

class CvvWidget extends StatelessWidget {
  const CvvWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('CVV'),
        Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: '',
              border: InputBorder.none,
            ),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.datetime,
          ),
        ),
      ],
    );
  }
}
