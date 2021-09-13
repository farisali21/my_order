import 'package:flutter/material.dart';

class ResturantNameAndTheStateOfResturant extends StatelessWidget {
  const ResturantNameAndTheStateOfResturant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gedoo',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Sandwitch, Males',
          style: TextStyle(fontSize: 11),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 3),
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            Text(
              'online',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
