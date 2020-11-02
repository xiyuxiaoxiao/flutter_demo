import 'package:fish_redux/fish_redux.dart';

class StockUpSmallLabelState implements Cloneable<StockUpSmallLabelState> {

  @override
  StockUpSmallLabelState clone() {
    return StockUpSmallLabelState();
  }
}

StockUpSmallLabelState initState(Map<String, dynamic> args) {
  return StockUpSmallLabelState();
}
