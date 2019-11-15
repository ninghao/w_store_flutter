import 'package:flutter/material.dart';
import 'package:w_store_flutter/src/login/widgets/login_form.dart';
import 'package:w_store_flutter/src/widgets/app_logo.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              AppLogo(
                type: LogoType.dark,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
