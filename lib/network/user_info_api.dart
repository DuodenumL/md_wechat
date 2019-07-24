import 'package:md_wechat/models/user_info.dart';
import 'package:md_wechat/network/fake_users.dart';

class UserInfoApi {
  static Future<UserBasicInfo> getUserBasicInfoByUsername(
      String username) async {
    return Future.delayed(Duration(seconds: 1), () => duodenum);
  }
}
