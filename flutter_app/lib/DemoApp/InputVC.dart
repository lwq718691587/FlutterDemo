import 'package:flutter/material.dart';

class InputVC extends StatefulWidget {
  InputVC({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InputVCState createState() => _InputVCState();
}

class _InputVCState extends State<InputVC> {

  final myController = TextEditingController();

  String textToShow = '我不喜欢flutter';

  void _updateText() {
    setState(() {
      textToShow = myController.text;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new ListView(

          children: <Widget>[
            new Container(
              child: new Text(textToShow),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              height: 200,
              color: Colors.grey[300],
            ),
            new Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: new TextField(
                controller: myController,
                maxLines: 3,
                decoration: InputDecoration(hintText: "This is a hint"),
                autofocus: true,
              ),
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                new RaisedButton(
                  child: Text('修改'),
                  onPressed: _updateText,
                ),
                new RaisedButton(
                  child: Text('清除'),
                  onPressed: (){
                    setState(() {
                      textToShow = '';
                    });
                  },
                )
                
              ],
            ),

            
          ],
        ),
    );
  }
}