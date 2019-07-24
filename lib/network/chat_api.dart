import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:md_wechat/models/user_info.dart';
import 'package:md_wechat/models/message.dart';
import 'fake_users.dart';

class ChatInfo {
  UserBasicInfo userInfo;
  String lastMsg;
  int unread;
  DateTime lastMsgTime;

  ChatInfo(
      {@required this.userInfo,
      @required this.lastMsg,
      @required this.unread,
      @required this.lastMsgTime});
}

class ChatApi {
  static Future<List<ChatInfo>> getChatInfoByWxID(String wxID) async {
    return Future.delayed(Duration(milliseconds: 200), () {
      return [
        ChatInfo(
            userInfo: huaji,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: yinXian,
            lastMsg: "Flutter真好用（迫真",
            unread: 5,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: pen,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: huaji,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: yinXian,
            lastMsg: "Flutter真好用（迫真",
            unread: 5,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: pen,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: huaji,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: yinXian,
            lastMsg: "Flutter真好用（迫真",
            unread: 5,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: pen,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: huaji,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: yinXian,
            lastMsg: "Flutter真好用（迫真",
            unread: 5,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: pen,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: huaji,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: yinXian,
            lastMsg: "Flutter真好用（迫真",
            unread: 5,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
        ChatInfo(
            userInfo: pen,
            lastMsg: "Flutter真好用（迫真",
            unread: 0,
            lastMsgTime: DateTime(2019, 7, 13, 9, 09)),
      ];
    });
  }

  static Future<List<Message>> getHistory(
      String fromUser, String toUser) async {
    print("from user: $fromUser, to user: $toUser");
    var toUserInfo = getFakeUserInfoByWxID(toUser);
    var fromUserInfo = Me.userInfo;

    return Future.delayed(Duration(milliseconds: 200), () {
      return [
        TextMessage(
            text: "这是一条假消息",
            fromUser: toUserInfo,
            toUser: fromUserInfo,
            time: 2516630400),
        TextMessage(
            text: "这是一条比较长的假消息，测试折行用，看看最后渲染出来的效果是不是能成功折行的。",
            fromUser: toUserInfo,
            toUser: fromUserInfo,
            time: 2516630400),
        TextMessage(
            text: "这是一条假消息，测试我这里发的消息。",
            fromUser: fromUserInfo,
            toUser: toUserInfo,
            time: 2516630400),
        ImageMessage(
            imageUrl:
                "https://camo.githubusercontent.com/cc97010a98e3100fcb5f2350fd7ad1502d4d2b69/68747470733a2f2f637573746f6d65722d73746f726965732d666565642e6769746875622e636f6d2f637573746f6d65725f73746f726965732f7361702f736170352e6a7067",
            fromUser: toUserInfo,
            toUser: fromUserInfo,
            time: 2516630400)
      ];
    });
  }
}
