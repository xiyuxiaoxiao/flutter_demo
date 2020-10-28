import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';

class LoginState implements Cloneable<LoginState> {

  TextEditingController usernameController;
  TextEditingController passwordController;

  @override
  LoginState clone() {
    return LoginState()
    ..usernameController = usernameController
    ..passwordController = passwordController;
  }
}

LoginState initState(Map<String, dynamic> args) {
  LoginState state = LoginState();
  state.usernameController = new TextEditingController();
  state.passwordController = new TextEditingController();
  return state;
}
