import 'package:md_wechat/models/user_info.dart';

var huaji = UserBasicInfo(
    wxID: "HuaJi",
    username: "滑稽",
    headImgUrl:
        "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=14295464,1780348834&fm=26&gp=0.jpg");

var yinXian = UserBasicInfo(
    wxID: "YinXian",
    username: "阴险",
    headImgUrl:
        "https://gitlab.com/uploads/-/system/user/avatar/1830990/avatar.png");

var pen = UserBasicInfo(
    wxID: "Pen",
    username: "喷",
    headImgUrl:
        "https://imgsa.baidu.com/forum/w%3D580/sign=6860deda3bd12f2ece05ae687fc3d5ff/2507a718972bd40726766cf076899e510fb30928.jpg");

var duodenum = UserBasicInfo(
    wxID: "Duodenum",
    username: "Duodenum",
    headImgUrl:
//        "https://camo.githubusercontent.com/cc97010a98e3100fcb5f2350fd7ad1502d4d2b69/68747470733a2f2f637573746f6d65722d73746f726965732d666565642e6769746875622e636f6d2f637573746f6d65725f73746f726965732f7361702f736170352e6a7067");
        "https://gitlab.com/uploads/-/system/user/avatar/1830990/avatar.png");

var userMap = Map<String, UserBasicInfo>.from({
  "HuaJi": huaji,
  "YinXian": yinXian,
  "Pen": pen,
  "Duodenum": duodenum,
});

UserBasicInfo getFakeUserInfoByWxID(String wxID) {
  return userMap[wxID];
}
