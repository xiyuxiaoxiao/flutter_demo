
import 'package:send_faster_app/port/seller/model/user/share/shared_cache.dart';

class UserInfo {
  String _account; // 账号
  String _password; // 秘密

  static UserInfo _userInfo;
  factory UserInfo() => _getInternal();

  static _getInternal() {
    if (null == _userInfo) {
      _userInfo = new UserInfo._internal();
    }
    return _userInfo;
  }

  // 初始化
  UserInfo._internal() {

  }

  void save(){

  }

}