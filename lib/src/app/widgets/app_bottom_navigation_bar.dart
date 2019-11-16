import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:w_store_flutter/src/app/providers/current_page.dart';

class AppBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentPage = Provider.of<CurrentPage>(context);

    return BottomNavigationBar(
      currentIndex: currentPage.index,
      onTap: (value) => currentPage.index = value,
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
            OMIcons.accountCircle,
            size: 32,
          ),
          title: Text('帐户'),
        ),
      ],
    );
  }
}
