import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';

import 'loginFormCubit/loginform_cubit.dart';

class LoginFormField extends StatefulWidget {
  const LoginFormField({Key? key}) : super(key: key);

  @override
  _LoginFormFieldState createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginformCubit, LoginformState>(
      builder: (context, state) {
        final controller = LoginformCubit.of(context);
        return Form(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.name,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'First name',
                    hintStyle: TextStyle(color: Colors.black54),
                  ),
                ),
                SizedBox(height: 18),
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.name,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Last name',
                    hintStyle: TextStyle(color: Colors.black54),
                  ),
                ),
                SizedBox(height: 18),
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black54),
                  ),
                ),
                SizedBox(height: 18),
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.number,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.black54),
                  ),
                ),
                SizedBox(height: 18),
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !controller.passwordVisible,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black54),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.changePasswordState();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          controller.passwordVisible ? 'hide' : 'show',
                          style: TextStyle(fontSize: 18, color: Colors.pink),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Text(
                    'your password must be at least 6 characters',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  ),
                ),
                Row(
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
