import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/component/error_component.dart';
import 'package:my_order/loginPage/cubit/login_cubit.dart';
import 'package:my_order/mainPage/view.dart';
import 'package:my_order/signup/signupCubit/signup_cubit.dart';
import 'package:my_order/widegts/app_bar.dart';

import 'widgets/login_form_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: Scaffold(
        appBar: loginAppBar([SizedBox()], 'Welcom to Wasly', () {}),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Continue with Email',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              LoginFormField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
                  Expanded(
                    child: BlocConsumer<SignupCubit, SignupState>(
                      listener: (context, state) {
                        // final controller = LoginformCubit.of(context);
                        // if (state is LoginFormLoaded) {
                        //   ScaffoldMessenger.of(context)
                        //       .showSnackBar(controller.snackBar);
                        // }
                      },
                      builder: (context, state) {
                        final controller = SignupCubit.of(context);
                        return ElevatedButton(
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {
                              controller.authenticate();
                              state is SingupLoading
                                  ? Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : state is ButtonLoaded
                                      ? ScaffoldMessenger.of(context)
                                          .showSnackBar(controller.snackBar)
                                      : ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                          SnackBar(
                                            content: Text('Navigate'),
                                          ),
                                        );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              primary: Colors.pinkAccent,
                              padding: EdgeInsets.all(10)),
                          child: Text(
                            'Create account',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'By creating an account you agree to Privacy policy and to the terms of use',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//MaterialStateProperty.all<Color>(Colors.pinkAccent)
