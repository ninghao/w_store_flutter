import 'package:http/http.dart' as http;
import 'package:w_store_flutter/src/signup/models/signup_model.dart';

class SignupService {
  signup(SignupModel data) async {
    final response = await http.post('http://192.168.31.127:3000/users', body: {
      'name': data.name,
      'password': data.password,
    });

    print(response.body);
    print(response.statusCode);
  }
}
