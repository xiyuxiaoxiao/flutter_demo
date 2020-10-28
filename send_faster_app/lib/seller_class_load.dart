/*
* 对于不同包名相同类同名的，通过自定义类来区分加载
* */
import 'package:fish_redux/fish_redux.dart';
import 'package:send_faster_app/port/seller/system/routes.dart';

class SellerClassLoad {
  AbstractRoutes getRoutes() {
    return htRoutes;
  }
}