import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Hello Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
          ),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget(),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'hello world',
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 30, color: Colors.cyan),
    );
  }
}
