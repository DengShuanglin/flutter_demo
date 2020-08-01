import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 入口main函数
void main() {
  // ltr => left to right
  runApp(MaterialApp(
    title: 'Hello Flutter',
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Nice Journey',
        ),
      ),
      body: Center(
        child: Text(
          'hello world',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 30, color: Colors.cyan),
        ),
      ),
    ),
  ));
}
