import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:send_faster_app/pages/login/login.dart';
import 'package:send_faster_app/pages/root/root_page.dart';
import 'package:send_faster_app/pages/system/routes.dart';
// seller中的包名 与上面的冲突
import 'package:send_faster_app/port/seller/system/routes.dart' as sellerRoutes;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    Map<String, WidgetBuilder> main_routes = {
      "/": (context) => RootPageWidget(),
      "login_page": (context) => LoginPageWidget(),
      "redux_example_page": (context) => htRoutes.buildPage("root_redux_example", null),
    };
    main_routes.addAll(sellerRoutes.routesMain);

    return OKToast(
        child: MaterialApp(
          title: '发的快',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: main_routes,
          onGenerateRoute: (RouteSettings settings) {

            if (settings.name.startsWith("seller_")){
              return CupertinoPageRoute<Object>(builder: (BuildContext context) {
                return sellerRoutes.htRoutes.buildPage(settings.name, settings.arguments);
              });
            }

            if (settings.name.startsWith("root_")){
              return CupertinoPageRoute<Object>(builder: (BuildContext context) {
                return htRoutes.buildPage(settings.name, settings.arguments);
              });
            }

          return MaterialPageRoute(
            builder: (context){
              return Scaffold(
                appBar: AppBar(
                ),
                body: Center(
                  child: Text("暂未发现当前页面"),
                ),
              );
            }
          );

          }
        )
    );
  }
}

class LoadingPopListener {
}