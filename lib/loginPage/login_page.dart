import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/checkOutOrderPage/widgets/components/app_bar_check_out.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/loginPage/cubit/login_cubit.dart';

import 'widgets/forget_create_account.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        appBar: checkOutAppBar(() {
          Navigator.of(context).pop();
        }, 'Login', context),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              final controller = LoginCubit.of(context);
              return Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Continue with email',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: TextFormField(
                        controller: controller.emailController,
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (_) {},
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Invalid email!';
                          }
                          return null;
                        },
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Email',
                          hintStyle: const TextStyle(color: Colors.black54),
                          // suffixIcon: suffixIcon,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      child: TextFormField(
                        controller: controller.passwordController,
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (_) {},
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return 'Invalid passowrd';
                          }
                          return null;
                        },
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.black54),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'Show',
                                style: TextStyle(color: Colors.pink),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ForgetAndCreateAccount(),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: defaultColor,
                          padding: const EdgeInsets.all(12),
                        ),
                        onPressed: () {
                          if (controller.formKey.currentState!.validate()) {
                            controller.authenticate();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        child: const Text('Login'),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
