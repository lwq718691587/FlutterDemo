import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './DemoApp/HomeVC.dart';
import './DemoApp/ImageVC.dart';
import './DemoApp/TextVC.dart';
import './DemoApp/InputVC.dart';
import './DemoApp/NetWorkVC.dart';
import './DemoApp/Http.dart';

void main() {
  dio.options.receiveTimeout = 15000;
  dio.options.baseUrl = "http://api.sap.ucarinc.com";
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : (BuildContext context) => MyAppHome(),
        '/ImageVC': (BuildContext context) => ImageVC(),
        '/TextVC': (BuildContext context) => TextVC(),
        '/InputVC': (BuildContext context) => InputVC(title: '文本输入'),
        '/NetWorkVC': (BuildContext context) => NetWorkVC(title: '网络请求'),
      },
    );
  }
}
