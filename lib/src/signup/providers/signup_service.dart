import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:w_store_flutter/src/app/models/exception_response_model.dart';
import 'package:w_store_flutter/src/app/models/user_model.dart';
import 'package:w_store_flutter/src/signup/models/signup_model.dart';

class SignupService {
  Future<UserModel> signup(SignupModel data) async {
    http.Response response;

    try {
      response = await http.post('http://192.168.31.127:3000/users', body: {
        'name': data.name,
        'password': data.password,
      });
    } catch (e) {
      throw ('无法连接服务。');
    }

    final responseBody = json.decode(response.body);

    if (response.statusCode != 201) {
      final exceptionResponse = ExceptionResponseModel.fromJson(responseBody);
      print('Exception: ${exceptionResponse.message}');
      throw ('${exceptionResponse.message}');
    }

    final user = UserModel.fromJson(responseBody);

    return user;
  }
}
