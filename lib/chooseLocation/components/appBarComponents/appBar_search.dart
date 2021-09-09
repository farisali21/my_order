import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

class AppBarSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'What you looking for?',
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFF8BBD0), width: 1.0),
          // borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFEF4760), width: 2.0),
        ),
      ),
      onChanged: (String text){},

    );
  }
}