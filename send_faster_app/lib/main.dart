import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:send_faster_app/pages/login/login.dart';
import 'package:send_faster_app/pages/root/root_page.dart';
import 'package:send_faster_app/pages/system/routes.dart';
import 'package:send_faster_app/pages/tabbar/tabbar.dart';
import 'package:send_faster_app/seller_class_load.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
        child: MaterialApp(
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

            // seller中的包名 与之前的冲突, 通过中间类调用
            "seller_login": (context) => SellerClassLoad().getRoutes().buildPage("login", null),
          },
        )
    );
  }
}