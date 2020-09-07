import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/screen/goods_screen.dart';

void main() => runApp(FlutterShop());

class FlutterShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop ',
      theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,
          textTheme: TextTheme(title: TextStyle(color: Colors.white))),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Интернет магазин"),
          centerTitle: true,
        ),
        body: GoodsScreen(),
      ),
    );
  }
}