import 'package:fish_redux/fish_redux.dart';
import 'package:send_faster_app/pages/redux/example/page.dart';

final AbstractRoutes htRoutes = PageRoutes(
  pages: <String, Page<Object, dynamic>>{
    "root_redux_example": ReduxExamplePage(),
  },
);
