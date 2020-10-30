import 'package:flutter/material.dart';

class RootPageWidget extends StatefulWidget {
  @override
  _RootPageWidgetState createState() => _RootPageWidgetState();
}

class _RootPageWidgetState extends State<RootPageWidget> {

  var _datas = [
    RootListItem(title: "请求", route_name: "login_page"),
    RootListItem(title: "tababr", route_name: "tabbar_page"),
    RootListItem(title: "fish-redux 框架", route_name: "redux_example_page"),
    RootListItem(title: "seller包下的登录", route_name: "seller_login"),
  ];

  void cellTap(index) {
    Navigator.pushNamed(context, _datas[index].route_name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("demo"),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
            child: ListView.builder(
                itemCount: _datas.length,
                itemBuilder: (BuildContext context,int index){
                  return GestureDetector(
                    behavior:HitTestBehavior.opaque,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Text(_datas[index].title),
                          ),
                          Container(
                            color: Colors.black12,
                            height: 1,
                          )
                        ],
                      ),
                    ),
                    onTap: () => cellTap(index),
                  );
                  //return ListTile(title: Text(_datas[index]));
                }
            )
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RootListItem {
  const RootListItem({this.title, this.route_name});

  final String title;
  final String route_name;
}