import 'package:fish_redux/fish_redux.dart';
import 'package:send_faster_app/ui_lib/ui_widget/toast.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.login: _onLogin,
  });
}

void _onLogin(Action action, Context<LoginState> ctx) {
  Toast.showToast("点击登录");
  Future.delayed(Duration(seconds: 2),(){
    print("登录回调");
    Navigator.of(ctx.context).pushNamedAndRemoveUntil('tabbar_page',(routes)=>false);
  });
}
