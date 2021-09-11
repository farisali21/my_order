import 'package:flutter/material.dart';

Widget controllerButton(title, void onpressed()) {
  return InkWell(
    onTap: onpressed,
    child: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pink[300],
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}
