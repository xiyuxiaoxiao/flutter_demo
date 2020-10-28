import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.login: _onLogin,
  });
}

void _onLogin(Action action, Context<LoginState> ctx) {
  Future.delayed(Duration(seconds: 2),(){
    print("登录回调");
  });
}
