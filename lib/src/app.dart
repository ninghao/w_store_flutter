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
      ),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
