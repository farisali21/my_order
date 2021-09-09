import 'package:flutter/material.dart';

const Color defaultColor = Color(0xffFB4E68);
const Color secondaryColor = Color(0xffFB4E68);
Color kPrimaryColor = Color(0xFFEF4760);
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a Value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFF8BBD0), width: 1.0),
    // borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFEF4760), width: 2.0),
  ),
);
