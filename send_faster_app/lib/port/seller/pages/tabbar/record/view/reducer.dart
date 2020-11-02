import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<StockupRecordState> buildReducer() {
  return asReducer(
    <Object, Reducer<StockupRecordState>>{
      StockupRecordAction.action: _onAction,
    },
  );
}

StockupRecordState _onAction(StockupRecordState state, Action action) {
  final StockupRecordState newState = state.clone();
  return newState;
}
