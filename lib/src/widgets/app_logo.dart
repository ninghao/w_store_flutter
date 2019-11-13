import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(64.0),
      child: Image.asset('assets/images/logo_dark.png'),
    );
  }
}
