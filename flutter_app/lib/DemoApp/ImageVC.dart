import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('图片'),
        ),
        body: new ListView(
          children: <Widget>[
            new FadeInImage.memoryNetwork(
                fit: BoxFit.fill,
                height: 200,
                placeholder: kTransparentImage,
                image: 'http://attach.bbs.miui.com/forum/201303/18/233119quyrec7to3ws3rco.jpg'
            ),

            new FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                height: 200,
                placeholder: 'images/loading.gif',
                image: 'http://b.hiphotos.baidu.com/zhidao/pic/item/2cf5e0fe9925bc31c58bcbc05cdf8db1ca137090.jpg'
            ),
            new Text('111'),
//            new Image.network(
//              'http://e.hiphotos.baidu.com/zhidao/pic/item/b64543a98226cffc7a951157b8014a90f703ea9c.jpg',
//            ),
//            new CachedNetworkImage(
//              placeholderFadeInDuration: Duration(),
//              imageUrl: 'http://c.hiphotos.baidu.com/zhidao/pic/item/3812b31bb051f819846c312bd8b44aed2e73e701.jpg',
//            ),
//            new Image.asset('images/timg2.jpeg')
          ],
        ));
  }
}
