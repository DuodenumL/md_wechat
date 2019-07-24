import 'package:flutter/material.dart';
import 'package:md_wechat/models/user_info.dart';

class WechatDrawer extends StatelessWidget {
  final UserBasicInfo userInfo;

  WechatDrawer({this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset("assets/images/glass.jpg", fit: BoxFit.fitWidth),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.network(userInfo.headImgUrl,
                              width: 80, height: 80)),
                      Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(userInfo.username,
                              style: Theme.of(context).textTheme.subtitle)),
                      Text("微信号：${userInfo.wxID}",
                          style: Theme.of(context).textTheme.body1)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
                child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("个人信息"),
                  onTap: () {
                    print("tapped!!!");
                  },
                ),
                ListTile(
                    leading: Icon(Icons.photo),
                    title: Text("相册"),
                    onTap: () {
                      print("tapped!!!");
                    }),
                ListTile(
                    leading: Icon(Icons.insert_emoticon),
                    title: Text("表情"),
                    onTap: () {
                      print("tapped!!!");
                    }),
                ListTile(
                    leading: Icon(Icons.attach_money),
                    title: Text("钱包"),
                    onTap: () {
                      print("tapped!!!");
                    }),
                ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("设置"),
                    onTap: () {
                      print("tapped!!!");
                    }),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
