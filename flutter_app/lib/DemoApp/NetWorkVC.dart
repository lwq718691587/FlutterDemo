import 'package:flutter/material.dart';
import 'dart:convert';
import './Http.dart';
import 'WorkRecordModel.dart';

class NetWorkVC extends StatefulWidget {
  NetWorkVC({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NetWorkVCState createState() => _NetWorkVCState();
}

class _NetWorkVCState extends State<NetWorkVC> {

  Future _requestData () async {
    var date = DateTime.now();
    var start = "${date.year.toString()}-${date.month.toString().padLeft(2,'0')}-01";
    var end = "${date.year.toString()}-${date.month.toString().padLeft(2,'0')}-${date.day.toString().padLeft(2,'0')}";
    var response = await dio.get("/ucarsap/getCheckInfoList?employeeCode=10002929&beginDate=$start&endDate=$end");
    try {
      Map recordMap = json.decode(response.data);
      List records = recordMap['data'];
      var recordList = records.map(
          (record) {
            return WorkRecordModel.fromJson(record);
          }
      );
      return recordList;

    } catch (e) {
        throw Exception('statusCode:${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
          future: _requestData(),
          builder: (BuildContext context, AsyncSnapshot snapShot){
            
            if (snapShot.connectionState == ConnectionState.waiting) {
              return Text('正在获取数据');
            } else {
              return ListView(
                padding: EdgeInsets.only(top: 5),
                children: snapShot.data.map<Widget>(
                    (WorkRecordModel item){
                      var titleStr = '日期' + '：'+ item.checkDate;
                      var subTitleStr = '时间' + '：' + item.checkinTime + ' - ' + item.checkoutTime ;
                      var duration = item.duration;
                      return ListTile(
                        title: new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(titleStr),
                              new Container(
                                height: 3,
                              ),
                              new Row(
                                children: <Widget>[
                                  new Expanded(
                                      child: new Text(subTitleStr)
                                  ),
                                  new Text(duration)
                                ],
                              ),
                              new Container(
                                height: 5,
                              ),
                              new Divider(
                                height: 5,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ).toList(),
              );
            }
          }
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}