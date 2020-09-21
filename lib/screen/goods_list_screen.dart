import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';
import 'package:flutter_shop/screen/cart_screen.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'goods_screen.dart';

class GoodsScreen extends StatefulWidget {
  @override
  _GoodsScreenState createState() => _GoodsScreenState();
}

class _GoodsScreenState extends State<GoodsScreen> {

  static List<Goods> cart = [];

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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Интернет магазин"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cart(cart: cart))),
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
                  return Card(
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    // child: Text(goods.price),
                    child: ListTile(
                      title: Wrap(
                        children: [
                          Text(snapshot.data[index].type + " ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
                          Text(snapshot.data[index].brand.toString() + " " + snapshot.data[index].model),
                        ],
                      ),
                      subtitle: Text("Цена: " + snapshot.data[index].price + " ",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                      leading: Image(
                        height: 50,
                        width: 50,
                        image: NetworkImage(snapshot.data[index].img),
                      ),
                      trailing: IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: () => {
                        // Нажатие на кнопку добавления товара в корзину
                        cart.add(snapshot.data[index]),
                        print("Добавили: " +snapshot.data[index].model)
                      },),
                      onTap: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GoodsPage (goods: snapshot.data[index], valueSetter: (selectedProduct) {
                        },)
                        ))
                      },
                    ),
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