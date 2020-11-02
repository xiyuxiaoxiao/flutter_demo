import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SellerMainState> buildReducer() {
  return asReducer(
    <Object, Reducer<SellerMainState>>{
      SellerMainAction.action: _onAction,
    },
  );
}

SellerMainState _onAction(SellerMainState state, Action action) {
  final SellerMainState newState = state.clone();
  return newState;
}
