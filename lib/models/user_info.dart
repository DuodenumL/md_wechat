import 'package:flutter/foundation.dart';

class UserBasicInfo {
  String wxID;
  String username;
  String headImgUrl;

  UserBasicInfo(
      {@required this.wxID,
      @required this.username,
      @required this.headImgUrl});
}

class Me {
  static UserBasicInfo userInfo;
}
