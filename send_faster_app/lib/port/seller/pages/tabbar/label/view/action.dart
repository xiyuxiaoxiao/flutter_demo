import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum StockUpSmallLabelAction { action }

class StockUpSmallLabelActionCreator {
  static Action onAction() {
    return const Action(StockUpSmallLabelAction.action);
  }
}
