import 'package:fish_redux/fish_redux.dart';

class StockupRecordState implements Cloneable<StockupRecordState> {

  @override
  StockupRecordState clone() {
    return StockupRecordState();
  }
}

StockupRecordState initState(Map<String, dynamic> args) {
  return StockupRecordState();
}
