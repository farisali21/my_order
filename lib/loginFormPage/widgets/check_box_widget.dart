import 'package:flutter/material.dart';
import 'package:my_order/loginFormPage/loginFormCubit/loginform_cubit.dart';

Row checkBoxWidget(LoginformCubit controller) {
  return Row(
    children: [
      Checkbox(
        checkColor: Colors.white,
        activeColor: Color(0xFFFF2873),
        value: controller.valuefirst,
        onChanged: (value) {
          controller.changeCheckBoxState(value);
        },
      ),
      Flexible(
        child: Text(
          'Yes, I want to receive offers and discounts.',
          maxLines: 2,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
}