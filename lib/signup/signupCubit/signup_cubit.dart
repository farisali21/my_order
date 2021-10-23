import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/core/user_credintial.dart';
import 'package:my_order/models/auth_model.dart';

import '../../main.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  static SignupCubit of(context) => BlocProvider.of(context);

  bool passwordVisible = true;
  late SnackBar snackBar;
  String? _token;
  DateTime? _expiryDate;
  final GlobalKey<FormState> formKey = GlobalKey();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  late String _password;
  late String _firstName;
  late String _lastName;
  late String _email;
  late String _phone;

  // Map<String, String> _authData = {
  //   'first_name': '',
  //   'last_name': '',
  //   'email': '',
  //   'phone': '',
  //   'password': '',
  //   'password_confirmation': '',
  // };
  var isLoading = false;
  var dio = Dio();

  bool get isAuth {
    return token != null;
  }

  String? get token {
    if (_expiryDate != null &&
        _expiryDate!.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    }
    return null;
  }

  bool valuefirst = false;
  void changePasswordState() {
    passwordVisible = !passwordVisible;
    emit(SignupRebuild());
  }

  void changeCheckBoxState(value) {
    valuefirst = value;
    emit(SignupRebuild());
  }

  Future<void> authenticate() async {
    emit(SingupLoading());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      CollectionReference users = firestore.collection('users');
      final Map<String, dynamic> userData = {
        'first_name': firstNameController.text,
        'last_name': lastNameController.text,
        'email': emailController.text,
        'phone': phoneNumberController.text,
        'password': passwordController.text,
      };
      users.doc(userCredential.user!.email).set(userData);

      final userInformation = await users.doc(userCredential.user!.email).get();

      _firstName = userInformation['first_name'];
      _lastName = userInformation['last_name'];
      _email = userInformation['email'];
      _phone = userInformation['phone'];
      _password = userInformation['password'];

      Hive.box(userDetails).put('first_name', _lastName);
      Hive.box(userDetails).put('last_name', _firstName);
      Hive.box(userDetails).put('email', _email);
      Hive.box(userDetails).put('phone', _phone);
      Hive.box(userDetails).put('password', _password);
      emit(SignupRebuild());
    } on FirebaseAuthException catch (e) {
      var errorMessage = 'Authentication failed';
      if (e.code == 'user-not-found') {
        errorMessage = 'No user found for that email.';
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Wrong password provided for that user.';
        print('Wrong password provided for that user.');
      } else if (e.code == 'email-already-in-use') {
        errorMessage =
            'The email address is already in use by another account.';
        print('The email address is already in use by another account.');
      }
      print(e);
      snackBar = SnackBar(content: Text(errorMessage));
      emit(SignupLoaded());
    } catch (error) {
      print(error);
    }
  }

  @override
  Future<void> close() {
    passwordController.dispose();
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();

    return super.close();
  }
}


//     options: Options(
      //       contentType: 'application/json',
      //       method: 'GET',
      //       validateStatus: (state) => state! < 500,
      //     ));
      