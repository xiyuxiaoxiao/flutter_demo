import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class StockupRecordPage extends Page<StockupRecordState, Map<String, dynamic>> {
  StockupRecordPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<StockupRecordState>(
                adapter: null,
                slots: <String, Dependent<StockupRecordState>>{
                }),
            middleware: <Middleware<StockupRecordState>>[
            ],);

}
