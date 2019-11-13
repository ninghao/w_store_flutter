import 'package:flutter/material.dart';
import 'package:w_store_flutter/src/home/home.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'w.store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black87,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.white,
          brightness: Brightness.light,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
