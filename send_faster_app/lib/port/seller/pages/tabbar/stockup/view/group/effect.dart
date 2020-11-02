import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<StockupGroupState> buildEffect() {
  return combineEffects(<Object, Effect<StockupGroupState>>{
    StockupGroupAction.action: _onAction,
  });
}

void _onAction(Action action, Context<StockupGroupState> ctx) {
}
