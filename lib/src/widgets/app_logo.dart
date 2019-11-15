import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  AppLogo({
    this.type,
  });

  final LogoType type;

  @override
  Widget build(BuildContext context) {
    final logoType = type.index == 0 ? 'dark' : 'light';

    return Padding(
      padding: EdgeInsets.all(64.0),
      child: Image.asset('assets/images/logo_$logoType.png'),
    );
  }
}

enum LogoType {
  dark,
  light,
}
