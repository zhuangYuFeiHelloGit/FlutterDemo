import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

//相当于 Application
class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "UpdateWidget",
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
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
  String oldShow = "马作的卢飞快，弓如霹雳弦惊";

  void _updateText() {
    setState(() {
      oldShow = "了却君王天下事，赢得生前身后名，可怜白发生";
    });
  }

  @override
  Widget build(BuildContext context) {
    //相当于带标题栏的一个主页
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("演示如何更改Widget属性"),
      ),
      body: new Center(
        child: new Text(oldShow),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _updateText,
        tooltip:"please click me",
        child: new Icon(Icons.update),
      ),
    );
  }
}
