import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<SellerTabbarState> buildEffect() {
  return combineEffects(<Object, Effect<SellerTabbarState>>{
    SellerTabbarAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SellerTabbarState> ctx) {
}
