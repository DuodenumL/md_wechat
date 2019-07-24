import 'package:flutter/material.dart';
import 'package:md_wechat/models/user_info.dart';
import 'package:md_wechat/models/moment.dart';
import 'package:md_wechat/network/moments_api.dart';
import 'package:md_wechat/ui/image_detail.dart';

class MomentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("朋友圈"),
            pinned: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            child: Image.network(
                              "https://ww3.sinaimg.cn/bmiddle/006rzGMqgy1g47hayfbuhj31hc1h7qbw.jpg",
                              fit: BoxFit.cover,
                            ),
                            constraints: BoxConstraints.expand(),
                          ),
                          flex: 4),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Container(
                    constraints: BoxConstraints(minHeight: 120, maxHeight: 120),
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            constraints: BoxConstraints(
                                minWidth: 100, minHeight: 100, maxHeight: 100),
                            child: ClipOval(
                              child: Image.network(Me.userInfo.headImgUrl),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Expanded(
                                  child: Center(
                                child: Text(
                                  Me.userInfo.username,
                                  style: Theme.of(context)
                                      .textTheme
                                      .title
                                      .copyWith(color: Colors.white),
                                  textScaleFactor: 1.2,
                                ),
                              )),
                              Expanded(
                                child: Text(""),
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          MomentsList(),
        ],
      ),
    );
  }
}

class MomentsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MomentsListState();
  }
}

class MomentsListState extends State<MomentsList> {
  List<Moment> moments = [];

  Widget getMomentCard(Moment moment) {
    var usernameStyle = Theme.of(context)
        .textTheme
        .title
        .copyWith(color: Theme.of(context).primaryColor);

    Widget imageGrid;
    if (moment.imageUrls != null && moment.imageUrls.length > 0) {
      var imageWidth = (MediaQuery.of(context).size.width - 130) / 4;
      imageGrid = Container(
        constraints: BoxConstraints(
            maxWidth: imageWidth * 4.5, maxHeight: imageWidth * 3.5),
        margin: EdgeInsets.only(top: 5, bottom: 30),
        child: GridView.builder(
          itemCount: moment.imageUrls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 1),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(3),
              child: HeroImage(
                  child: Image.network(
                moment.imageUrls[index],
                fit: BoxFit.cover,
              )),
            );
          },
        ),
      );
    } else {
      imageGrid = Container();
    }

    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                constraints: BoxConstraints.tight(Size(50, 50)),
                margin: EdgeInsets.all(10),
                child: ClipOval(
                  child: Image.network(moment.user.headImgUrl),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 5),
                  child: Text(
                    moment.user.username,
                    style: usernameStyle,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 90),
                  child: Text(
                    moment.text,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.grey),
                  ),
                ),
                imageGrid,
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Text(" ${moment.likes.length}     "),
                    Icon(Icons.mode_comment,
                        color: Theme.of(context).primaryColor),
                    Text(" ${moment.comments.length} "),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  @override
  void initState() {
    super.initState();
    MomentsApi.getMomentsByWxID(Me.userInfo.wxID).then((value) {
      print("获取到了朋友圈信息！");
      setState(() {
        moments = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) {
        var moment = moments[index];
        return Column(
          children: <Widget>[
            getMomentCard(moment),
            Divider(
              color: Colors.black,
            ),
          ],
        );
      },
      childCount: moments.length,
    ));
  }
}
