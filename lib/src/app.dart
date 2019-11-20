import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w_store_flutter/src/add/add.dart';
import 'package:w_store_flutter/src/app/models/user_model.dart';
import 'package:w_store_flutter/src/app/providers/auth_service.dart';
import 'package:w_store_flutter/src/home/home.dart';
import 'package:w_store_flutter/src/profile/profile.dart';
import 'package:w_store_flutter/src/app/providers/current_page.dart';
import 'package:w_store_flutter/src/app/widgets/app_bottom_navigation_bar.dart';
import 'package:w_store_flutter/src/signup/signup.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CurrentPage>(
          builder: (context) => CurrentPage(),
        ),
        Provider<AuthService>(
          builder: (context) => authService,
        ),
        StreamProvider<UserModel>(
          builder: (context) => authService.currentUser,
        ),
      ],
      child: MaterialApp(
        title: 'w.store',
        debugShowCheckedModeBanner: false,
        routes: {
          '/signup': (context) => Signup(),
        },
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
          body: Consumer<CurrentPage>(
            builder: (context, currentPage, child) => IndexedStack(
              index: currentPage.index,
              children: <Widget>[
                Home(),
                Add(),
                Profile(),
              ],
            ),
          ),
          bottomNavigationBar: AppBottomNavigationBar(),
        ),
      ),
    );
  }
}
