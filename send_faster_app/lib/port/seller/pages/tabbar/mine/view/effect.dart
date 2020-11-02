import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<SellerMainState> buildEffect() {
  return combineEffects(<Object, Effect<SellerMainState>>{
    SellerMainAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SellerMainState> ctx) {
}
