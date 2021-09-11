import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';

Widget textFormFieldVisaWidget(keyboardType, title, suffixIcon) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 6,
        ),
        TextFormField(
          textAlign: TextAlign.start,
          keyboardType: keyboardType,
          onChanged: (_) {},
          decoration: kTextFieldDecoration.copyWith(
            hintText: '',
            hintStyle: TextStyle(color: Colors.black54),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    ),
  );
}
