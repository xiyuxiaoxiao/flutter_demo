import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginState>>{
      LoginAction.cleanUsername: _onCleanUsername,
      LoginAction.cleanPassword: _onCleanPassword,
      LoginAction.keepPassword: _onKeepPassword,
    },
  );
}

LoginState _onCleanUsername(LoginState state, Action action) {
  final LoginState newState = state.clone();
  return newState;
}

LoginState _onCleanPassword(LoginState state, Action action) {
  final LoginState newState = state.clone();
  return newState;
}

LoginState _onKeepPassword(LoginState state, Action action) {
  final LoginState newState = state.clone();
  return newState;
}
