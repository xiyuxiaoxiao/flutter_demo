import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(SellerTabbarState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.green,
    height: 400,
    padding: EdgeInsets.all(50),
    child: Text("新的tabbar"),
  );
}
