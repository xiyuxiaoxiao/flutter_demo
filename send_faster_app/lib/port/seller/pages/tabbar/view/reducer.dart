import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SellerTabbarState> buildReducer() {
  return asReducer(
    <Object, Reducer<SellerTabbarState>>{
      SellerTabbarAction.action: _onAction,
    },
  );
}

SellerTabbarState _onAction(SellerTabbarState state, Action action) {
  final SellerTabbarState newState = state.clone();
  return newState;
}
