import 'package:flutter/material.dart';

class StockUpHomePageWidget extends StatefulWidget {
  @override
  _StockUpHomePageWidgetState createState() => _StockUpHomePageWidgetState();
}

class _StockUpHomePageWidgetState extends State<StockUpHomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("备货页面"),
      ),
      body: Center(
        child: Text("备货页面"),
      ),
    );
  }
}