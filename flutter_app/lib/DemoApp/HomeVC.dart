import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'CommonCell.dart';

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Demo'),
        ),
        body: new ListView(
          children: <Widget>[
            new CommonCell(
              title: '图片',
              image: Icons.image,
              click: (title) {
                Navigator.of(context).pushNamed('/ImageVC');
              },
            ),
            new CommonCell(
              title: '文本与布局',
              image: Icons.label,
              click: (title) {
                Navigator.of(context).pushNamed('/TextVC');
              },
            ),
            new CommonCell(
              title: '文本输入',
              image: Icons.label,
              click: (title) {
                Navigator.of(context).pushNamed('/InputVC');
              },
            ),
            new CommonCell(
              title: '网络请求',
              image: Icons.label,
              click: (title) {
                Navigator.of(context).pushNamed('/NetWorkVC');
              },
            ),
          ],
        ));
  }
}