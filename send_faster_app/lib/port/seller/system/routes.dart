import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:send_faster_app/port/seller/login/page.dart';
import 'package:send_faster_app/port/seller/pages/tabbar/stockup/view/group/page.dart';
import 'package:send_faster_app/port/seller/pages/tabbar/tabbar.dart';

class Pages {
  static const login = "seller_login";
  static const tabbar = "sellr_tabbar";
  static const stockupGroup = "seller_stockup_group";
}
// 对于非fish_redux的page 需要单独在main中创建
final AbstractRoutes htRoutes = PageRoutes(
    pages: {
      Pages.login: LoginPage(),
      Pages.stockupGroup: StockupGroupPage(),
    }
);

final Map<String, WidgetBuilder> routesMain = {
  Pages.tabbar: (context) => TabbarPageWidget(),
};