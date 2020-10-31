import 'package:fish_redux/fish_redux.dart';

class SellerTabbarState implements Cloneable<SellerTabbarState> {

  @override
  SellerTabbarState clone() {
    return SellerTabbarState();
  }
}

SellerTabbarState initState(Map<String, dynamic> args) {
  return SellerTabbarState();
}
