import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SellerTabbarPage extends Page<SellerTabbarState, Map<String, dynamic>> {
  SellerTabbarPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SellerTabbarState>(
                adapter: null,
                slots: <String, Dependent<SellerTabbarState>>{
                }),
            middleware: <Middleware<SellerTabbarState>>[
            ],);

}
