import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<StockUpSmallLabelState> buildReducer() {
  return asReducer(
    <Object, Reducer<StockUpSmallLabelState>>{
      StockUpSmallLabelAction.action: _onAction,
    },
  );
}

StockUpSmallLabelState _onAction(StockUpSmallLabelState state, Action action) {
  final StockUpSmallLabelState newState = state.clone();
  return newState;
}
