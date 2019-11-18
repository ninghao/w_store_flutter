import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:w_store_flutter/src/signup/providers/signup_service.dart';
import 'package:w_store_flutter/src/signup/widgets/signup_form.dart';
import 'package:w_store_flutter/src/app/widgets/app_logo.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Provider(
      builder: (context) => SignupService(),
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_1.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black26,
                BlendMode.hardLight,
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(40.0),
              child: Column(
                children: <Widget>[
                  AppLogo(
                    type: LogoType.light,
                  ),
                  SignupForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
