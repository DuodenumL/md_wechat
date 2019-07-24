import 'package:md_wechat/models/moment.dart';
import 'package:md_wechat/network/fake_users.dart';

class MomentsApi {
  static Future<List<Moment>> getMomentsByWxID(String wxID) async {
    return Future.delayed(Duration(milliseconds: 200), () {
      return <Moment>[
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
              "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
              "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
              "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
              "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
              "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
          "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
          "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
          "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
          "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
          "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
          "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
        Moment(
          user: duodenum,
          time: 2516630400,
          text:
          "天真蓝开启形象写真2.0时代。NaiveGIRL专为都市女孩量身定制，第一季灵感来自于80年代兴起的City-Pop音乐风格。来吧，拍一张色彩缤纷的形象照，成为盛夏大碟的封面女主。一起回到复古时代，迎接悠长假期。关➕转，7月18日送出3份NaiveGIRL拍摄。",
          imageUrls: <String>[
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ahtzbyj20xc1e07wh.jpg",
            "https://wx2.sinaimg.cn/mw690/6ca8651ely1g4v1ajppirj20xc19n1kx.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1akdgdzj20xc1e37wh.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1al89wvj20xc1bbhdt.jpg",
            "https://wx4.sinaimg.cn/mw690/6ca8651ely1g4v1ckg409j20xc1e0e81.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1am2y1cj20xc19m7wh.jpg",
            "https://wx1.sinaimg.cn/mw690/6ca8651ely1g4v1anngixj215o294x6q.jpg",
            "https://wx3.sinaimg.cn/mw690/6ca8651ely1g4v1aopb89j215o280b29.jpg",
          ],
          likes: <Like>[
            Like(user: yinXian, time: 2516630400),
            Like(user: pen, time: 2516630400),
          ],
          comments: <Comment>[
            Comment(user: yinXian, time: 2516630400, text: "厉害奥"),
            Comment(
                user: pen,
                time: 2516630400,
                text: "海马体天下第一！天真蓝属实8行，门店数量比海马体差的也很远。你们那，Naive！！！"),
          ],
        ),
      ];
    });
  }
}
