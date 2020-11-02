import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(StockUpSmallLabelState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("备货小标签"),
    ),
    body: Center(
      child: Text("备货小标签"),
    ),
  );;
}
