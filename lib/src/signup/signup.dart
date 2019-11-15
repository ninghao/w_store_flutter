import 'package:flutter/material.dart';
import 'package:w_store_flutter/src/signup/widgets/signup_form.dart';
import 'package:w_store_flutter/src/widgets/app_logo.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              AppLogo(),
              SignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}
