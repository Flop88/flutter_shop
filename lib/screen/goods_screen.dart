import 'package:flutter/material.dart';
import 'package:flutter_shop/components/goods_card.dart';
import 'package:flutter_shop/model/goods.dart';
import 'package:flutter_shop/screen/cart_screen.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GoodsScreen extends StatefulWidget {
  @override
  _GoodsScreenState createState() => _GoodsScreenState();
}

class _GoodsScreenState extends State<GoodsScreen> {
  Future<List<Goods>> _getGoods() async {
    var data = await http.get("http://mvlikhachev.ru/flutter_shop/goods.json");
    String body = utf8.decode(data.bodyBytes); // decode to UTF-8
    var jsonData = json.decode(body);

    List<Goods> goods = [];
    for (var g in jsonData) {
      Goods jsonGoods = Goods(
          id: g["id"],
          brand: g["brand"],
          model: g["model"],
          type: g["type"],
          img: g["img"],
          price: g["price"],
          description: g["description"]);
      goods.add(jsonGoods);
    }

    return goods;
  }

  List<Goods> cart = [];

  @override
  Widget build(BuildContext context) {
    print(cart.length);
    return Scaffold(
      appBar: AppBar(
        title: Text("Интернет магазин"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => {
              cart.length != 0
                  ? Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cart(cart: cart)))
                  : null // Потом можно добавить toast или еще что
            },
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
          future: _getGoods(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // Если snapshot.data  равно null - выводим сообщение о загрузке чтоб не было красного экрана
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text("Loading..."),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return GoodsCard(
                    goods: snapshot.data[index],
                    valueSetter: (selectedProduct) {
                      setState(() {
                        cart.add(snapshot.data[index]);
                      });
                    },
                    cart: cart,
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}