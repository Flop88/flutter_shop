import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/screen/goods_list_screen.dart';


void main() => runApp(FlutterShop());

class FlutterShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop ',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(55, 118, 166, 1),
          textTheme: TextTheme(title: TextStyle(color: Colors.white))),
      home: GoodsScreen(),
    );
  }
}