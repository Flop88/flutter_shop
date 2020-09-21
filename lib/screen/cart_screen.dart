import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';

class Cart extends StatefulWidget {
  final List<Goods> cart;
  // Goods goods;

  int sum = 0;
  int count = 1;
  int cartSum = 0;

  Cart({this.cart});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
    var map = Map();
    var list = List();

    final goodsCounts = map.values.toList();
    List<Goods> result = LinkedHashSet<Goods>.from(widget.cart).toList();

    setState(() {
      widget.sum = 0;

      widget.cart.forEach((element) {
        widget.sum = widget.sum + int.parse(element.price);

        if(!map.containsKey(element)) {
          map[element] = 1;
        } else {
          map[element] +=1;

        }
    });

      list = map.values.toList();
      // print("Всего объектов: " + widget.cart.length.toString());
      // print("Уникальных объектов: " + list.length.toString());
      // print("В новом списке объектов: " + result.length.toString());
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
                      child: ListTile(
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
                        subtitle: Text(
                            "Цена: " + result[index].price + " ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        leading: Wrap(children: [
                          Container(
                            child: Text( "${list[index]} x", style: TextStyle(fontWeight: FontWeight.bold), ),
                            margin: EdgeInsets.only(top: 15),
                          ),
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
                              widget.cart.remove(result[index]);
                            });
                          },
                        ),
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
