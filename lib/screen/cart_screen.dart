import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_shop/model/cart.dart';
import 'package:flutter_shop/model/goods.dart';

class Cart extends StatefulWidget {
  List<Goods> cart;
  Goods goods;

  int sum = 0;
  int count = 1;
  int cartSum = 0;

  Cart();

  Cart.product({this.goods});
  Cart.clear();

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
    var map = Map();
    var list = List();

    final goodsCounts = map.values.toList();
    List<Goods> result = LinkedHashSet<Goods>.from(CartItem.instance).toList();

    setState(() {
      widget.sum = 0;

      result.forEach((element) {
        widget.sum = widget.sum + int.parse(element.price);

        if(!map.containsKey(element)) {
          map[element] = 1;
        } else {
          map[element] +=1;

        }
    });

      list = map.values.toList();
    });
    return Scaffold(
        appBar: AppBar(
          title: Text("Корзина"),
          centerTitle: true,
        ),
        body: ListView(children: [
          Wrap(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: result.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2.0,
                      margin: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Wrap(
                              children: [
                                Text(
                                  result[index].type + " ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(result[index].brand.toString() +
                                    " " +
                                    result[index].model),
                              ],
                            ),
                            subtitle: Wrap(
                                children:[
                                  Text(
                                      "Цена: " + result[index].price + " ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ]
                            ),
                            leading: Wrap(children: [
                              Image(
                                height: 50,
                                width: 50,
                                image: NetworkImage(result[index].img),
                              ),
                            ]),
                            trailing: IconButton(
                              icon: Icon(Icons.remove_shopping_cart),
                              onPressed: () {
                                setState(() {
                                  widget.sum -= int.parse(result[index].price);
                                  CartItem.removeProduct(result[index]);
                                });
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton(
                                child: Text("+"),
                                onPressed: () {
                                  setState(() {
                                    widget.sum += int.parse(result[index].price);
                                    CartItem.addProduct(result[index]);
                                  });
                                },
                              ),
                              Text( "${CartItem.}", style: TextStyle(fontWeight: FontWeight.bold)),
                              FlatButton(
                                child: Text('-'),
                                onPressed: () {
                                  setState(() {
                                    widget.sum -= int.parse(result[index].price);
                                    CartItem.removeProduct(result[index]);
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
              Divider(),
              Text(
                "Итого: ${widget.sum}",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ]));
  }
}
