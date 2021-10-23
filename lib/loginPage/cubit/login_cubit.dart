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
import 'package:my_order/main.dart';
import 'package:my_order/models/auth_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit of(context) => BlocProvider.of(context);

  final GlobalKey<FormState> formKey = GlobalKey();
  bool passwordVisible = true;
  late SnackBar snackBar;
  late String _password;
  late String _firstName;
  late String _lastName;
  late String _email;
  late String _phone;
  var isLoading = false;
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  var dio = Dio();

  void changePasswordState() {
    passwordVisible = !passwordVisible;
    emit(LoginLoaded());
  }

  Future<void> authenticate() async {
    emit(ButtonLoading());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);

      final userInformation = await users.doc(userCredential.user!.email).get();

      _firstName = userInformation['first_name'];
      _lastName = userInformation['last_name'];
      _email = userInformation['email'];
      _phone = userInformation['phone'];
      _password = userInformation['password'];
      emit(ButtonLoaded());

      Hive.box(userDetails).put('first_name', _lastName);
      Hive.box(userDetails).put('last_name', _firstName);
      Hive.box(userDetails).put('email', _email);
      Hive.box(userDetails).put('phone', _phone);
      Hive.box(userDetails).put('password', _password);
    } on FirebaseAuthException catch (e) {
      var errorMessage = 'Authentication failed';
      if (e.code == 'user-not-found') {
        errorMessage = 'No user found for that email.';
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        errorMessage = 'Wrong password provided for that user.';
      }
      snackBar = SnackBar(content: Text(errorMessage));
      emit(LoginError());
    }
  }

  @override
  Future<void> close() {
    passwordController.dispose();
    emailController.dispose();
    return super.close();
  }
}








//   late String _accessToken;
//   late int _generalId;
//   late String _firstName;
//   late String _lastName;
//   late String _email;
//   late String _phone;
//   late int _areaId;
//   late String _areaNameEn;
//   late String _areaNameAr;
//   late String _cityNameEn;
//   late String _cityNameAr;

       //        final responce = AuthModel.fromJson(responseData);
      // _accessToken = responce.accessToken;
      // _generalId = responce.data.id;
      // _firstName = responce.data.firstName;
      // _lastName = responce.data.lastName;
      // _email = responce.data.email;
      // _phone = responce.data.phone;
      // _areaId = responce.data.area.id;
      // _areaNameEn = responce.data.area.nameEn;
      // _areaNameAr = responce.data.area.nameAr;
      // _cityNameEn = responce.data.area.city.nameEn;
      // _cityNameAr = responce.data.area.city.nameAr;