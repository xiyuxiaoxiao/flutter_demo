import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<ReduxExampleState> buildEffect() {
  return combineEffects(<Object, Effect<ReduxExampleState>>{
    ReduxExampleAction.login: _onLogin,
  });
}

void _onLogin(Action action, Context<ReduxExampleState> ctx) {
  Future.delayed(Duration(seconds: 2), (){
    print("登录回调");
  });
}
