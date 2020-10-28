import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ReduxExampleState> buildReducer() {
  return asReducer(
    <Object, Reducer<ReduxExampleState>>{
      ReduxExampleAction.cleanUserName: _cleanUserName,
    },
  );
}

ReduxExampleState _cleanUserName(ReduxExampleState state, Action action) {
  final ReduxExampleState newState = state.clone();
  newState.usernameController.clear();
  return newState;
}
