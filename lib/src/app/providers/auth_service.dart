import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:w_store_flutter/src/app/models/exception_response_model.dart';
import 'package:w_store_flutter/src/app/models/user_model.dart';
import 'package:w_store_flutter/src/login/models/login_model.dart';

class AuthService {
  bool isLoggedIn = false;
  StreamController<UserModel> _currentUserController = StreamController();
  Stream<UserModel> get currentUser => _currentUserController.stream;

  void dispose() {
    _currentUserController.close();
  }

  void logout() {
    isLoggedIn = false;
    _currentUserController.sink.add(
      UserModel(name: 'guest'),
    );
  }

  Future<UserModel> login(LoginModel data) async {
    http.Response response;

    try {
      response =
          await http.post('http://192.168.31.127:3000/auth/login', body: {
        'name': data.name,
        'password': data.password,
      });
    } catch (e) {
      throw ('无法连接服务。');
    }

    final responseBody = json.decode(response.body);

    if (response.statusCode != 201) {
      final exceptionResponse = ExceptionResponseModel.fromJson(responseBody);
      throw ('${exceptionResponse.message}');
    }

    final user = UserModel.fromJson(responseBody);
    _currentUserController.sink.add(user);
    isLoggedIn = true;

    return user;
  }
}
