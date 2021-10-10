import 'package:flutter/material.dart';

class ForgetAndCreateAccount extends StatelessWidget {
  const ForgetAndCreateAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Forgot password?',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Create an account!',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
