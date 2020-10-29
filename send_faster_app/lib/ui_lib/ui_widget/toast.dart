import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:send_faster_app/ui_lib/ui_style/img.dart';
import 'package:send_faster_app/ui_lib/ui_style/zs_color.dart';

class Toast {
  static void showToast(String text) {

    Widget wg = Container(
      decoration: BoxDecoration(
        color: ZSColors.toast_back,
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      padding: EdgeInsets.only(left: 27, right: 27, bottom: 20, top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Offstage(
            offstage: false,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset(
                ZSImage.noteWhite,
                width: 40,
                height: 40,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13
            ),
          )
        ],
      ),
    );

    showToastWidget(wg, duration: Duration(milliseconds: 1300),dismissOtherToast: true);
  }
}