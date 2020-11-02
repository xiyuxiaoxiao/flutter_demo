import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum StockupGroupAction { action }

class StockupGroupActionCreator {
  static Action onAction() {
    return const Action(StockupGroupAction.action);
  }
}
