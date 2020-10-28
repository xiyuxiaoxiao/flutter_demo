import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ReduxExampleAction {
  login,
  cleanUserName,
}

class ReduxExampleActionCreator {
  static Action onLogin() {
    return const Action(ReduxExampleAction.login);
  }

  static Action onCleanUserName() {
    return const Action(ReduxExampleAction.cleanUserName);
  }
}
