import 'package:md_wechat/models/contact_list_item.dart';
import 'fake_users.dart';

class ContactsApi {
  static Future<List<ContactListItem>> getContactsByWxID(String wxID) async {
    return await Future.delayed(Duration(milliseconds: 200), () {
      return <ContactListItem>[
        ContactListItem(userInfo: huaji, isFirst: true),
        ContactListItem(userInfo: huaji, isFirst: false),
        ContactListItem(userInfo: yinXian, isFirst: true),
        ContactListItem(userInfo: pen, isFirst: true),
      ];
    });
  }
}
