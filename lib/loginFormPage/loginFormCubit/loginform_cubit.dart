import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'loginform_state.dart';

class LoginformCubit extends Cubit<LoginformState> {
  LoginformCubit() : super(LoginformInitial());
  static LoginformCubit of(context) => BlocProvider.of(context);

  bool passwordVisible = true;
  String? _token;
  DateTime? _expiryDate;
  String? _userId;
  Timer? _authTimer;
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

  Future<void> _authenticate(
      String email, String password, String urlSegment) async {
    emit(LoginFormLoading());
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=Apikey';
    try {
      final response = await dio.post(url,
          data: ({
            'email': email,
            'password': password,
            'returnSecureToken': true,
          }));
      final responseData = response.data;
      print(responseData['error']);
      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }
      _token = responseData['idToken'];
      _userId = responseData['localId'];
      _expiryDate = DateTime.now().add(
        Duration(
          seconds: int.parse(responseData['expiresIn']),
        ),
      );
      emit(LoginFormLoaded());

      // final prefs = await SharedPreferences.getInstance();
      // final userData = json.encode({
      //   'token': _token,
      //   'userId': _userId,
      //   'expiryDate': _expiryDate.toIso8601String(),
      // });
      // prefs.setString('userData', userData);

    } catch (e) {
      throw e;
    }
  }

  Future<void> singup(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }

  void logout() async {
    _userId = null;
    _token = null;
    _expiryDate = null;
    if (_authTimer != null) {
      _authTimer!.cancel();
      _authTimer = null;
    }
    emit(LoginFormRebuild());
    // final prefs = await SharedPreferences.getInstance();
    // prefs.remove('userData');
    // prefs.clear();
  }
}
