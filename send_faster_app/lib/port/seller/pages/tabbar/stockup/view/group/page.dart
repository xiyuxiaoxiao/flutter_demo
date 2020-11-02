import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class StockupGroupPage extends Page<StockupGroupState, Map<String, dynamic>> {
  StockupGroupPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<StockupGroupState>(
                adapter: null,
                slots: <String, Dependent<StockupGroupState>>{
                }),
            middleware: <Middleware<StockupGroupState>>[
            ],);

}
