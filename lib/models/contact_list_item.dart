import 'package:flutter/foundation.dart';
import 'package:lpinyin/lpinyin.dart';
import 'user_info.dart';

class ContactListItem {
  // 联系人详情
  UserBasicInfo userInfo;

  // 是否为星标
  bool isStar;

  // 是否为一组中的第一个
  bool isFirst;

  ContactListItem(
      {@required this.userInfo, @required this.isFirst, this.isStar = false});

  String get initChar => isStar
      ? "Star"
      : PinyinHelper.getFirstWordPinyin(userInfo?.username ?? "#")[0];
}
