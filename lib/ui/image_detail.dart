import 'package:flutter/material.dart';
import 'package:md_wechat/helpers/random_str.dart';

class HeroImageDetail extends StatelessWidget {
  final String tag;
  final Widget child;

  HeroImageDetail({this.tag, this.child});

  @override
  Widget build(BuildContext context) {
    print("tag: $tag");
    return GestureDetector(
      child: Center(
        child: Hero(
            tag: tag,
            child: Container(
              child: child,
            )),
      ),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }
}

// 使用HeroImage，实现"点击图片查看大图"
class HeroImage extends StatelessWidget {
  final String _tag;
  final Widget child;

//  HeroImage({this.child}) : _tag = RandomString.get(32);
  HeroImage({this.child}) : _tag = "${child.hashCode}";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Hero(
        tag: _tag,
        child: child,
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return HeroImageDetail(tag: _tag, child: child);
        }));
      },
    );
  }
}
