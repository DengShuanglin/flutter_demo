import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
          ),
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
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              print('button pressed');
              setState(() {
                counter++;
              });
            },
            child: Text('Add one'),
          ),
          Text(
            'current count: $counter',
            style: TextStyle(fontSize: 26),
          ),
        ],
      ),
    );
  }
}
