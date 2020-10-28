import 'package:flutter/material.dart';
import 'package:send_fast_app/pages/login/login.dart';
import 'package:send_fast_app/pages/root/root_page.dart';
import 'package:send_fast_app/pages/system/routes.dart';
import 'package:send_fast_app/pages/tabbar/tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '发的快',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context) => RootPageWidget(),
        "login_page": (context) => LoginPageWidget(),
        "tabbar_page": (context) => TabbarPageWidget(),
        "redux_example_page": (context) => htRoutes.buildPage("redux_example", null),
      },
    );
  }
}