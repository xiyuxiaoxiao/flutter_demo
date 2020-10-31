import 'package:fish_redux/fish_redux.dart';
import 'package:send_faster_app/port/seller/login/page.dart';
import 'package:send_faster_app/port/seller/pages/tabbar/view/page.dart';

// 对于非fish_redux的page 需要单独在main中创建
final AbstractRoutes htRoutes = PageRoutes(
    pages: {
      "seller_login": LoginPage(),
      "seller_tabbar": SellerTabbarPage()
    }
);