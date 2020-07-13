import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

typedef CommonCellClick = void Function(String title);

class CommonCell extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData image;
  final CommonCellClick click;

  CommonCell({Key key, this.title, this.image, this.subTitle, this.click});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(image),
            title: new Text(title),
            subtitle: subTitle != null  ? new Text(subTitle) : null,
            onTap: () {
              click(title);
            },
          ),
          new Divider(
            indent: 10,
            height: 2,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}