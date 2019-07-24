import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:md_wechat/models/user_info.dart';

class Message {
  // 发消息人的wxID
  UserBasicInfo fromUser;

  // 收消息人的wxID
  UserBasicInfo toUser;

  // 消息时间
  int time;

  Message(this.fromUser, this.toUser, this.time);
}

class TextMessage extends Message {
  String text;

  TextMessage(
      {@required this.text,
      @required UserBasicInfo fromUser,
      @required UserBasicInfo toUser,
      @required int time})
      : super(fromUser, toUser, time);
}

class ImageMessage extends Message {
  String imageUrl;

  ImageMessage(
      {@required this.imageUrl,
      @required UserBasicInfo fromUser,
      @required UserBasicInfo toUser,
      @required int time})
      : super(fromUser, toUser, time);
}
