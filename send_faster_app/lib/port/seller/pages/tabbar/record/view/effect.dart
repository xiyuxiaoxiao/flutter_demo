import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<StockupRecordState> buildEffect() {
  return combineEffects(<Object, Effect<StockupRecordState>>{
    StockupRecordAction.action: _onAction,
  });
}

void _onAction(Action action, Context<StockupRecordState> ctx) {
}
