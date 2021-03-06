import 'package:flutter/material.dart';
import 'package:send_faster_app/port/seller/pages/tabbar/label/view/page.dart';
import 'package:send_faster_app/port/seller/pages/tabbar/mine/view/page.dart';
import 'package:send_faster_app/port/seller/pages/tabbar/record/view/page.dart';
import 'package:send_faster_app/port/seller/pages/tabbar/stockup/view/group/page.dart';

class TabbarPageWidget extends StatefulWidget {
  @override
  _TabbarPageWidgetState createState() => _TabbarPageWidgetState();
}

class _TabbarPageWidgetState extends State<TabbarPageWidget> {

  int _currentIndex = 0;
  List<Widget> _pages = [
    StockupGroupPage().buildPage(null),
    StockupRecordPage().buildPage(null),
    StockUpSmallLabelPage().buildPage(null),
    SellerMainPage().buildPage(null),
  ];

  void _tabItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          body: _pages[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.star), title: Text("备货")),
              BottomNavigationBarItem(icon: Icon(Icons.access_time), title: Text("备货记录")),
              BottomNavigationBarItem(icon: Icon(Icons.flag), title: Text("备货小标签")),
              BottomNavigationBarItem(icon: Icon(Icons.mail), title: Text("我的")),
            ],
            onTap: (index) => _tabItemTap(index),
          ),
        )
    );
  }
}
