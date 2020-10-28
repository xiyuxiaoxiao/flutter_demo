import 'package:flutter/material.dart';

class StockUpRecordPageWidget extends StatefulWidget {
  @override
  _StockUpRecordPageWidgetState createState() => _StockUpRecordPageWidgetState();
}

class _StockUpRecordPageWidgetState extends State<StockUpRecordPageWidget> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count ++;
    });
  }

  void _refreshCounter() {
    setState(() {
      _count  = 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("备货记录"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("备货记录 $_count"),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text("添加数据"),
              onPressed: _incrementCounter,
            ),
            RaisedButton(
              child: Text("刷新 count = 10"),
              onPressed: _refreshCounter,
            )
          ],
        ),
      )
    );
  }
}