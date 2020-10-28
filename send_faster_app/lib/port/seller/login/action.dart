import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction {
  login,
  cleanUsername,
  cleanPassword,
  keepPassword,
}

class LoginActionCreator {

  static Action onLogin() {
    return const Action(LoginAction.login);
  }

  static Action onCleanUsername() {
    return const Action(LoginAction.cleanUsername);
  }

  static Action onCleanPassword() {
    return const Action(LoginAction.cleanPassword);
  }

  static Action onKeepPassword() {
    return const Action(LoginAction.keepPassword);
  }

}
