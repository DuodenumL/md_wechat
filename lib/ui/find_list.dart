import 'package:flutter/material.dart';
import 'package:md_wechat/ui/moments.dart';

class FindListItem {
  IconData icon;
  String title;

  FindListItem({@required this.icon, @required this.title});
}

class FindList extends StatelessWidget {
  final List<FindListItem> options = [
    FindListItem(icon: Icons.camera, title: "朋友圈"),
    FindListItem(icon: Icons.filter_center_focus, title: "扫一扫"),
    FindListItem(icon: Icons.phone_android, title: "摇一摇"),
    FindListItem(icon: Icons.people, title: "附近的人"),
    FindListItem(icon: Icons.favorite_border, title: "漂流瓶"),
    FindListItem(icon: Icons.shopping_cart, title: "购物"),
  ];
  final Set<String> divides = Set<String>.from(["朋友圈", "摇一摇", "漂流瓶"]);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          var option = options[index];
          return Padding(
            padding: EdgeInsets.all(5),
            child: ListTile(
              leading: Icon(option.icon, color: Theme.of(context).primaryColor),
              title: Text(
                option.title,
                style: Theme.of(context).textTheme.title,
              ),
              onTap: () {
                print("tapped!!!");
                if (option.title == "朋友圈") {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return MomentsPage();
                  }));
                }
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          return divides.contains(options[index].title)
              ? Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Divider(
                    color: Colors.black26,
                  ))
              : SizedBox(
                  height: 0,
                );
        },
        itemCount: options.length);
  }
}
