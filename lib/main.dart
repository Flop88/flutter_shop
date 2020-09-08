import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/screen/goods_page.dart';
import 'package:flutter_shop/screen/goods_screen.dart';
import 'package:flutter_shop/screen/shopping_basket.dart';

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
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => openCart(context),
            )
          ],
          centerTitle: true,
        ),
        body: GoodsScreen(),
      ),
    );
  }
}

openCart(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingBasket()), );
}