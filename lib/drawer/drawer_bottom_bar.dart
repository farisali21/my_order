import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35,),
        Text(
          'Contact us',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
            Icon(
              FontAwesomeIcons.instagram,
              color: Colors.white,

            ),
            Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,

            ),

          ],
        ),
        SizedBox(height: 50,)
      ],
    );
  }
}
