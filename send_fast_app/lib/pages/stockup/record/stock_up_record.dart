import 'package:flutter/material.dart';

class StockUpRecordPageWidget extends StatefulWidget {
  @override
  _StockUpRecordPageWidgetState createState() => _StockUpRecordPageWidgetState();
}

class _StockUpRecordPageWidgetState extends State<StockUpRecordPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("备货记录"),
      ),
      body: Center(
        child: Text("备货记录"),
      ),
    );
  }
}