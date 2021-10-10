import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
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
  late String _accessToken;
  late int _generalId;
  late String _firstName;
  late String _lastName;
  late String _email;
  late String _phone;
  late int _areaId;
  late String _areaNameEn;
  late String _areaNameAr;
  late String _cityNameEn;
  late String _cityNameAr;
  SnackBar snackBar = SnackBar(content: Text(''));
  var isLoading = false;
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  var dio = Dio();

  void changePasswordState() {
    passwordVisible = !passwordVisible;
    emit(LoginLoaded());
  }

  Future<void> authenticate() async {
    final url = '$baseUrl/client/auth/login';
    try {
      final response = await dio.post(url,
          data: {
            'email': emailController.text,
            'password': passwordController.text,
          },
          options: Options(
            contentType: 'application/json',
            method: 'POST',
            validateStatus: (state) => state! < 500,
          ));
      final responseData = response.data;
      Hive.box(userDetails).put('userCerdintial', responseData);
      UserCredintial.userCredintial = responseData;
      print(UserCredintial.userCredintial);
      emit(LoginLoaded());
    } catch (error, trace) {
      print(error);
      print(trace);
    }
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