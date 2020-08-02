import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          ProductItem('Product1', 'Macbook pro1',
              'https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg'),
          ProductItem('Product2', 'Macbook pro2',
              'https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg'),
          ProductItem('Product3', 'Macbook pro3',
              'https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg'),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String pictureUrl;

  ProductItem(this.title, this.subtitle, this.pictureUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 2)),
      padding: EdgeInsets.all(4),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 24),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Image.network(pictureUrl),
        ],
      ),
    );
  }
}
