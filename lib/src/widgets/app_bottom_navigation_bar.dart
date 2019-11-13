import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatefulWidget {
  @override
  _AppBottomNavigationBarState createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.change_history,
            size: 32,
          ),
          title: Text('首页'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
            size: 32,
          ),
          title: Text('添加'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            size: 32,
          ),
          title: Text('帐户'),
        ),
      ],
    );
  }
}
