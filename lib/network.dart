import 'package:dio/dio.dart';
void getHttp(String api) async {
  try {
    var response = await Dio().get(api);
    print(response.data);
  } catch (e) {
    print(e);
  }
}