import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/widegts/app_bar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgottenPassword extends StatefulWidget {
  const ForgottenPassword({Key? key}) : super(key: key);

  @override
  State<ForgottenPassword> createState() => _ForgottenPasswordState();
}

class _ForgottenPasswordState extends State<ForgottenPassword> {
  // var onTapRecognizer;

  // TextEditingController textEditingController = TextEditingController();

  // StreamController<ErrorAnimationType>? errorController;
  bool hasError = false;
  String currentText = "";

  // @override
  // void initState() {
  //   onTapRecognizer = TapGestureRecognizer()
  //     ..onTap = () {
  //       Navigator.pop(context);
  //     };
  //   // errorController = StreamController<ErrorAnimationType>();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // errorController!.close();

  //   super.dispose();
  // }

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
                onPressed: () {
                  _showMaterialDialog();
                },
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

  void _showMaterialDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: AlertDialog(actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Confirm Code',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: PinCodeTextField(
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 4,
                        obscureText: false,
                        obscuringCharacter: '*',
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 3) {
                            return "I'm from validator";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 60,
                          fieldWidth: 50,
                          activeFillColor:
                              hasError ? Colors.red : Colors.grey[300],
                          activeColor: Colors.grey[300],
                          disabledColor: Colors.grey[300],
                          inactiveFillColor: Colors.grey[300],
                          inactiveColor: Colors.grey[300],
                          selectedColor: Colors.grey[300],
                          selectedFillColor: Colors.grey[300],
                        ),
                        cursorColor: Colors.black,
                        animationDuration: Duration(milliseconds: 300),
                        textStyle: TextStyle(fontSize: 20, height: 1.6),
                        // backgroundColor: Colors.blue.shade50,
                        enableActiveFill: true,
                        // errorAnimationController: errorController,
                        // controller: textEditingController,
                        keyboardType: TextInputType.number,
                        boxShadows: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                        onCompleted: (v) {
                          print("Completed");
                        },
                        // onTap: () {
                        //   print("Pressed");
                        // },
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Text('You can resend code after  '),
                        Text(
                          '60sec',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: defaultColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Confirm'),
                        style: ElevatedButton.styleFrom(
                          primary: defaultColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          );
        });
  }
}
