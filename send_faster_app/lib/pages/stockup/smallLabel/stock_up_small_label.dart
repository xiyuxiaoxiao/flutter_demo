import 'package:flutter/material.dart';

class StockUpSmallLabelPageWidget extends StatefulWidget {
  @override
  _StockUpSmallLabelPageWidgetState createState() => _StockUpSmallLabelPageWidgetState();
}

class _StockUpSmallLabelPageWidgetState extends State<StockUpSmallLabelPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("备货小标签"),
      ),
      body: Center(
        child: Text("备货小标签"),
      ),
    );
  }
}