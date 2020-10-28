import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: GestureDetector(
        onTap: () {
          // 隐藏键盘
          FocusScope.of(viewService.context).requestFocus(new FocusNode());
        },
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: state.usernameController,
                      decoration: InputDecoration(
                        hintText: "请输入帐号",
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: (){
                        dispatch(LoginActionCreator.onCleanUsername());
                      })
                ],
              )
            ],
          ),
        ),
      )

  );
}
