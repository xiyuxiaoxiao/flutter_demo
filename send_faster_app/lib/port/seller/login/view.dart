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
          padding: EdgeInsets.only(left:30, right: 30, bottom: 100),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: state.usernameController,
                style: TextStyle(
                  fontSize: 15,
                  textBaseline: TextBaseline.alphabetic,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20, bottom: 20),
                  border: InputBorder.none,
                  hintText: "请输入帐号",
                  hintStyle: TextStyle(
                    fontSize: 15
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => dispatch(LoginActionCreator.onCleanUsername()),
                  ),
                  icon: Icon(Icons.account_circle)
                ),
              ),
              Container(
                height: 1,
                color: Color.fromRGBO(200, 200, 200, 1),
              ),
              TextField(
                controller: state.passwordController,
                style: TextStyle(
                  fontSize: 15,
                  textBaseline: TextBaseline.alphabetic,
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20, bottom: 20),
                    border: InputBorder.none,
                    hintText: "请输入密码",
                    hintStyle: TextStyle(
                        fontSize: 15
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => dispatch(LoginActionCreator.onCleanPassword()),
                    ),
                    icon: Icon(Icons.work_rounded)
                ),
              ),
              Container(
                height: 1,
                color: Color.fromRGBO(200, 200, 200, 1),
              ),

              SizedBox(
                height: 42,
              ),

              FlatButton(
                height: 44,
                minWidth: double.infinity,
                child:Text("登录", style: TextStyle(fontSize: 15)),
                textColor: Colors.white,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)
                ),
                onPressed: (){
                  dispatch(LoginActionCreator.onLogin());
                },
              ),
            ],
          ),
        ),
      )

  );
}
