import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart';

class ReduxExampleState implements Cloneable<ReduxExampleState> {

  TextEditingController usernameController;
  @override
  ReduxExampleState clone() {
    return ReduxExampleState()
    ..usernameController = usernameController;
  }
}

ReduxExampleState initState(Map<String, dynamic> args) {
  ReduxExampleState state = ReduxExampleState();
  state.usernameController = new TextEditingController();
  return state;
}
