import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'flutter',
        style: TextStyle(fontSize: 26),
      ),
    );
  }
}
