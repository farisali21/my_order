import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/core/user_credintial.dart';
import 'package:my_order/models/auth_model.dart';

import '../../main.dart';

part 'loginform_state.dart';

class LoginformCubit extends Cubit<LoginformState> {
  LoginformCubit() : super(LoginformInitial());
  static LoginformCubit of(context) => BlocProvider.of(context);

  bool passwordVisible = true;
  SnackBar snackBar = SnackBar(content: Text(''));
  String? _token;
  DateTime? _expiryDate;
  final GlobalKey<FormState> formKey = GlobalKey();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

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
    emit(LoginFormRebuild());
  }

  void changeCheckBoxState(value) {
    valuefirst = value;
    emit(LoginFormRebuild());
  }

  Future<void> authenticate() async {
    emit(LoginFormLoading());
    final url = '$baseUrl/client/auth/signUp';
    try {
      final response = await dio.post(url,
          data: ({
            'first_name': firstNameController.text,
            'last_name': lastNameController.text,
            'phone': phoneNumberController.text,
            'email': emailController.text,
            'password': passwordController.text,
            'password_confirmation': passwordController.text,
          }));
      final responseData = response.data;
      Hive.box(userDetails).put('userCerdintial', responseData);
      UserCredintial.userCredintial = responseData;
      print(responseData);
      emit(LoginFormLoaded());
    } catch (e) {
      throw e;
    }
  }

  // Future<void> singup({
  //   required String firstName,
  //   required String lastName,
  //   required String phoneNumber,
  //   required String email,
  //   required String password,
  //   required String passwordConfirmation,
  //   required String urlSegment,
  // }) async {
  //   return _authenticate(
  //     email: email,
  //     password: password,
  //     passwordConfirmation: passwordConfirmation,
  //     firstName: firstName,
  //     lastName: lastName,
  //     phoneNumber: phoneNumber,
  //     urlSegment: 'signUp',
  //   );
  // }

  Future<void> submit({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String urlSegment,
  }) async {
    emit(LoginFormLoading());
    if (!formKey.currentState!.validate()) {
      //Invalid
      return;
    }
    isLoading = true;
    try {
      // await singup(
      //   email: email,
      //   password: password,
      //   passwordConfirmation: passwordConfirmation,
      //   firstName: firstName,
      //   lastName: lastName,
      //   phoneNumber: phoneNumber,
      //   urlSegment: 'signUp',
      // );
    } catch (error) {
      var errorMessage = 'Authentication failed';
      if (error.toString().contains('EMAIL_EXISTS')) {
        errorMessage = 'This email address is aleardy use.';
      } else if (error.toString().contains('INVALID_EMAIL')) {
        errorMessage = 'This is not a valid email';
      } else if (error.toString().contains('WEAK_PASSWORD')) {
        errorMessage = 'This is too weak';
      } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
        errorMessage = 'Could not found a user with that email';
      } else if (error.toString().contains('INVALID_PASSWORD')) {
        errorMessage = 'Invalid password';
      }
      snackBar = SnackBar(content: Text(errorMessage));
    }
  }

  @override
  Future<void> close() {
    // passwordController.dispose();
    return super.close();
  }
}
