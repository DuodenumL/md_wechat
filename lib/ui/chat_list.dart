import 'package:flutter/material.dart';
import 'package:md_wechat/network/chat_api.dart';
import 'package:md_wechat/ui/chat_page.dart';
import 'package:md_wechat/models/user_info.dart';

class ChatList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatListState();
}

class ChatListState extends State<ChatList> {
  List<ChatInfo> chatInfoList = [];

  @override
  void initState() {
    super.initState();
    Future.wait([
      ChatApi.getChatInfoByWxID("Duodenum").then((info) {
        print("getting...");
        setState(() {
          chatInfoList = info;
        });
      })
    ]);
    print('get chat info!');
    print(chatInfoList);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.separated(
          itemBuilder: (context, index) {
            var chatInfo = chatInfoList[index];
            return ListTile(
              leading: Container(
                constraints: BoxConstraints.tight(Size(50, 50)),
                child: ClipOval(
                  child: Image.network(chatInfo.userInfo.headImgUrl),
                ),
              ),
              title: Text(chatInfo.userInfo.username),
              subtitle: Text(chatInfo.lastMsg),
              trailing: Text('15:25'),
              onTap: () {
                print("进入与${chatInfo.userInfo.username}的回话中");
                Navigator.of(context)
                    .push(MaterialPageRoute<void>(builder: (context) {
                  return new ChatPage(Me.userInfo, chatInfo.userInfo);
                }));
              },
            );
          },
          separatorBuilder: (context, index) => Divider(
                color: Colors.black26,
              ),
          itemCount: chatInfoList.length),
    );
  }
}
