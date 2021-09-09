import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/resetPassword/cubit/resetpassword_cubit.dart';
import 'package:my_order/widegts/app_bar.dart';

class ResetPassowrd extends StatelessWidget {
  const ResetPassowrd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetpasswordCubit(),
      child: Scaffold(
        appBar: loginAppBar([SizedBox()], 'Forgotten Password', () {}),
        body: BlocBuilder<ResetpasswordCubit, ResetpasswordState>(
          builder: (context, state) {
            final controller = ResetpasswordCubit.of(context);
            return Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Column(
                children: [
                  TextField(
                    textAlign: TextAlign.start,
                    obscureText: controller.passwordVisible,
                    keyboardType: TextInputType.number,
                    onChanged: (_) {},
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'New password',
                      hintStyle: TextStyle(color: Colors.black54),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.number,
                    onChanged: (_) {},
                    obscureText: controller.passwordVisible,
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Confirm New password',
                      hintStyle: TextStyle(color: Colors.black54),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.changePasswordState();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            controller.passwordVisible ? 'show' : 'hide',
                            style: TextStyle(fontSize: 14, color: Colors.pink),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Confirm'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
