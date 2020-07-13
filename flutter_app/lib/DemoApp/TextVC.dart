import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('文本'),
        ),
        body: new ListView(children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                child: new Text('标签一'),
                color: Colors.red,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
              ),
              new Container(
                color: Colors.blue,
                child: new Text('标签二'),
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
              )
            ],
          ),
          new Row(children: <Widget>[
            new Expanded(
                child: new Container(
                  child: new Text('标签一标签一标签'),
                  color: Colors.red,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
            )),
            new Expanded(
                child: new Container(
                  child: new Text('标签一标签一'),
                  alignment: Alignment.centerRight,
                  color: Colors.blue,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
            )),
          ]),
          new Row(children: <Widget>[
            new Expanded(
                child: new Container(
                  child: new Text('标签一'),
                  color: Colors.red,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                )),
            new Expanded(
                child: new Container(
                  child: new Text('标签二'),
                  color: Colors.red,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                ),
                  flex: 2,
            ),
            new Expanded(
                child: new Container(
                  child: new Text('标签三'),
                  alignment: Alignment.centerRight,
                  color: Colors.blue,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                )),
          ]),
          new Row(children: <Widget>[
            new Expanded(
                child: new Container(
                  child: new Text('标签一标签一标签标签一标签一标签标签一标签一标签标签一标签一标签标签一标签一标签标签一标签一标签标签一标签一标签'),
                  color: Colors.red,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
            )),
            new Container(
                child: new Text('标签一标签'),
                alignment: Alignment.centerRight,
                color: Colors.blue,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
            ),
          ]),
          new Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[

                new Expanded(
                    child: new Container(
                      child: new Text('标签一标签一标签标签一标签一标签标签一标签一标签标签一标签一标签标签'),
                      color: Colors.red,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                    )),
                new Container(
                  child: new Text('标签一标签',

                  ),
                  alignment: Alignment.bottomRight,
                  color: Colors.blue,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                ),
            ])
        ]));
  }
}
