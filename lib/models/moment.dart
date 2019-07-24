import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:md_wechat/models/user_info.dart';

// 朋友圈动态
class Moment {
  UserBasicInfo user;
  int time;
  String text;
  List<String> imageUrls;
  List<Like> likes;
  List<Comment> comments;

  Moment(
      {@required this.user,
      @required this.time,
      @required this.text,
      this.imageUrls,
      this.likes,
      this.comments});
}

// 点赞
class Like {
  UserBasicInfo user;
  int time;

  Like({@required this.user, @required this.time});
}

// 评论
class Comment {
  UserBasicInfo user;
  int time;
  String text;

  Comment({@required this.user, @required this.time, @required this.text});
}
