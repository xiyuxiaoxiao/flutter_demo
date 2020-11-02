import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<StockUpSmallLabelState> buildEffect() {
  return combineEffects(<Object, Effect<StockUpSmallLabelState>>{
    StockUpSmallLabelAction.action: _onAction,
  });
}

void _onAction(Action action, Context<StockUpSmallLabelState> ctx) {
}
