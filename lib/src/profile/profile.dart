import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w_store_flutter/src/app/models/user_model.dart';
import 'package:w_store_flutter/src/login/login.dart';
import 'package:w_store_flutter/src/signup/signup.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  UserModel _currentUser;

  @override
  Widget build(BuildContext context) {
    _currentUser = Provider.of<UserModel>(context);

    if (_currentUser == null) {
      print('还没有登录');
    } else {
      print('当前登录用户：${_currentUser.name}');
    }

    return Scaffold(
      body: Login(),
    );
  }
}
