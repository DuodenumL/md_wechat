import 'package:md_wechat/models/message.dart';
import 'package:md_wechat/models/user_info.dart';
import 'package:flutter/material.dart';
import 'package:md_wechat/network/chat_api.dart';
import 'package:md_wechat/ui/image_detail.dart';

class ChatPage extends StatefulWidget {
  // 通常是用户自己
  UserBasicInfo fromUser;

  // 这里指聊天对象
  UserBasicInfo toUser;

  ChatPage(this.fromUser, this.toUser);

  @override
  State<StatefulWidget> createState() => ChatPageState(fromUser, toUser);
}

class ChatPageState extends State<ChatPage> {
  UserBasicInfo fromUser;
  UserBasicInfo toUser;
  List<Message> messageList = [];
  TextEditingController _textEditingController = TextEditingController();
  ScrollController _scrollController = ScrollController();

  ChatPageState(this.fromUser, this.toUser);

  void sendMessage(String message) {
    if (message.length == 0) {
      return;
    }
    print("发送消息： " + message);
    setState(() {
      messageList.add(TextMessage(
          text: _textEditingController.text,
          fromUser: fromUser,
          toUser: toUser,
          time: 2516630400));
      _textEditingController.clear();
      _scrollController.animateTo(10000000,
          duration: Duration(seconds: 1), curve: Curves.ease);
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    ChatApi.getHistory(fromUser.wxID, toUser.wxID).then((value) {
      setState(() {
        this.messageList = value;
        print("got message history!!!");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(toUser.username),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                controller: _scrollController,
                itemCount: messageList.length,
                itemBuilder: (context, index) {
                  print("fromUser: ${fromUser.wxID}");
                  return ChatBox(messageList[index],
                      messageList[index].fromUser.wxID == fromUser.wxID);
                }),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    onSubmitted: sendMessage,
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      sendMessage(_textEditingController.text);
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChatBox extends StatelessWidget {
  final Message message;

  // 聊天的方向，true表示是自己发的，false表示是对面发的
  final bool direction;

  ChatBox(this.message, this.direction);

  @override
  Widget build(BuildContext context) {
    print("direction: $direction");
    var chatBoxColor =
        direction ? Theme.of(context).primaryColor : Colors.white;
    var textStyle =
        Theme.of(context).textTheme.body1.copyWith(color: Colors.black);
    Widget messageWidget;
    if (message is TextMessage) {
      messageWidget = Text((message as TextMessage).text, style: textStyle);
    } else if (message is ImageMessage) {
      var image = Image.network(
        (message as ImageMessage).imageUrl,
        fit: BoxFit.cover,
      );
      messageWidget = Container(
        constraints: BoxConstraints(
            minWidth: 45, maxWidth: 180, minHeight: 80, maxHeight: 320),
//        padding: EdgeInsets.all(0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1),
          color: chatBoxColor,
        ),
        child: HeroImage(
          child: image,
        ),
      );
    } else {
      messageWidget = Text(
        "[暂不支持的消息类型]",
        style: textStyle,
      );
    }
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        textDirection: direction ? TextDirection.rtl : TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeroImage(
            child: Container(
              constraints: BoxConstraints.tight(Size(40, 40)),
              child: ClipOval(
                child: Image.network(message.fromUser.headImgUrl),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            constraints:
                BoxConstraints(minWidth: 20, maxWidth: 310, minHeight: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: chatBoxColor,
              boxShadow: [BoxShadow(offset: Offset(0.3, 0.3), blurRadius: 0.1)],
            ),
            child: Padding(
              padding: messageWidget is Text
                  ? EdgeInsets.all(10)
                  : EdgeInsets.all(0),
              child: messageWidget,
            ),
          )
        ],
      ),
    );
  }
}
