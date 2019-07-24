import 'package:flutter/material.dart';
import 'package:md_wechat/models/contact_list_item.dart';
import 'package:md_wechat/network/contacts_api.dart';
import 'package:md_wechat/models/user_info.dart';
import 'package:md_wechat/ui/chat_page.dart';

class ContactList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ContactListState();
}

class ContactListState extends State<ContactList> {
  List<ContactListItem> contacts = [];

  @override
  void initState() {
    super.initState();
    Future.wait(<Future>[
      ContactsApi.getContactsByWxID("Duodenum").then((value) {
        setState(() {
          contacts = value;
        });
      })
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.separated(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        var contact = contacts[index];
        Widget leading;
        if (!contact.isFirst) {
          leading = Text("");
        } else if (contact.initChar == "Star") {
          leading = Icon(
            Icons.star,
            color: Theme.of(context).primaryColor,
          );
        } else {
          var style = Theme.of(context)
              .textTheme
              .title
              .copyWith(color: Theme.of(context).primaryColor);
          leading = Text(
            contact.initChar.toUpperCase(),
            style: style,
          );
        }
        return Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: ListTile(
            leading: leading,
            title: Text(
              contact.userInfo.username,
              style: Theme.of(context).textTheme.title,
            ),
            trailing: ClipOval(
              child: Image.network(contact.userInfo.headImgUrl),
            ),
            onTap: () {
              print("进入与${contact.userInfo.username}的回话中");
              Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (context) {
                    return ChatPage(Me.userInfo, contact.userInfo);
                  }
              ));
            },
          ),
        );
      },
      separatorBuilder: (context, index) {
        var contact = contacts[index];
        if (index > 0 && contact.isFirst) {
          return Divider(
            color: Colors.black26,
          );
        }
        return Divider();
      },
    ));
  }
}
