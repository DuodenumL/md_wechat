import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:md_wechat/models/user_info.dart';
import 'package:md_wechat/network/user_info_api.dart';
import 'package:md_wechat/ui/chat_list.dart';
import 'package:md_wechat/ui/contact_list.dart';
import 'package:md_wechat/ui/find_list.dart';
import 'package:md_wechat/ui/drawer.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(Wechat());
}

class Wechat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '微信',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WechatHomePage(),
    );
  }
}

class WechatHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WechatHomePageState();
}

class WechatHomePageState extends State<WechatHomePage>
    with SingleTickerProviderStateMixin {
  List<String> _tabs = ["消息", "联系人", "发现"];
  TabController _tabController;
  UserBasicInfo _userInfo;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    UserInfoApi.getUserBasicInfoByUsername("Duodenum").then((value) {
      Me.userInfo = value;
      print("我是${Me.userInfo.username}");
      setState(() {
        _userInfo = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("微信"),
        bottom: TabBar(
            tabs: _tabs
                .map((str) => Tab(
                      text: str,
                    ))
                .toList(),
            controller: _tabController),
      ),
      body: TabBarView(
        children: <Widget>[
          ChatList(),
          ContactList(),
          FindList(),
        ],
        controller: _tabController,
      ),
      drawer: WechatDrawer(userInfo: _userInfo),
    );
  }
}
