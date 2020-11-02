import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<StockupGroupState> buildReducer() {
  return asReducer(
    <Object, Reducer<StockupGroupState>>{
      StockupGroupAction.action: _onAction,
    },
  );
}

StockupGroupState _onAction(StockupGroupState state, Action action) {
  final StockupGroupState newState = state.clone();
  return newState;
}
