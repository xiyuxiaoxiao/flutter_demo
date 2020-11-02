import 'package:fish_redux/fish_redux.dart';

class StockupGroupState implements Cloneable<StockupGroupState> {

  @override
  StockupGroupState clone() {
    return StockupGroupState();
  }
}

StockupGroupState initState(Map<String, dynamic> args) {
  return StockupGroupState();
}
