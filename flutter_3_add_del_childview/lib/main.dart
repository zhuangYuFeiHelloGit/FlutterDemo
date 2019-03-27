import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

//相当于 Application
class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "UpdateWidget",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new SampleAppPage(),
    );
  }
}

//相当于 MainActivity
class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key s}) : super(key: s);

  @override
  State<StatefulWidget> createState() => new _SampleAppPageState();
}

//用于存储 SampleAppPage 的状态
class _SampleAppPageState extends State<SampleAppPage> {
  var show = true;

  void _updateChild() {
    setState(() {
      show = !show;
    });
  }

  _getChild() {
    if (show) {
      return new Text("散入珠帘湿罗幕，狐裘不暖锦衾薄");
    } else {
      return new Image(image: AssetImage("assets/lake.png"));
    }
  }

  @override
  Widget build(BuildContext context) {
    //相当于带标题栏的一个主页
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("演示如何更改Widget属性"),
      ),
      body: new Center(
        child: _getChild(),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _updateChild,
        tooltip: "please click me",
        child: new Icon(Icons.update),
      ),
    );
  }
}
