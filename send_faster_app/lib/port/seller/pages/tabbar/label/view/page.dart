import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class StockUpSmallLabelPage extends Page<StockUpSmallLabelState, Map<String, dynamic>> {
  StockUpSmallLabelPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<StockUpSmallLabelState>(
                adapter: null,
                slots: <String, Dependent<StockUpSmallLabelState>>{
                }),
            middleware: <Middleware<StockUpSmallLabelState>>[
            ],);

}
