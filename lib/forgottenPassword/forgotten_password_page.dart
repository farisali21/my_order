import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/widegts/app_bar.dart';

class ForgottenPassword extends StatelessWidget {
  const ForgottenPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loginAppBar([SizedBox()], 'Forgotten Password', () {}),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.emailAddress,
              onChanged: (_) {},
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Resut Your password'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
