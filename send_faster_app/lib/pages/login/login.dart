import 'package:flutter/material.dart';
import 'package:send_faster_app/port/seller/system/routes.dart';
import 'package:send_faster_app/unit/net/zs_http.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("请求"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            ZSHttpAPI.test();
          },
          child: Text("测试 请求"),
        ),
      ),
    );
  }
}



