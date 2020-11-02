import 'package:fish_redux/fish_redux.dart';

class SellerMainState implements Cloneable<SellerMainState> {

  @override
  SellerMainState clone() {
    return SellerMainState();
  }
}

SellerMainState initState(Map<String, dynamic> args) {
  return SellerMainState();
}
