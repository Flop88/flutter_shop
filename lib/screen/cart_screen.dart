import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';

class Cart extends StatefulWidget {
  final List<Goods> cart;

  int sum = 0;
  int count = 1;
  int cartSum = 0;

  Cart({this.cart});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {


  // get sum => cartSum;

  @override
  Widget build(BuildContext context) {
    setState(() {
      widget.sum = 0;
      widget.cart.forEach((element) {
      widget.sum = widget.sum + int.parse(element.price);
      print(widget.sum);
    });
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
                  itemCount: widget.cart.length,
                  itemBuilder: (context, index) {
                    return Card(
                            elevation: 2.0,
                            margin: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: ListTile(
                              title: Wrap(
                                children: [
                                  Text(
                                    widget.cart[index].type + " ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.cart[index].brand.toString() +
                                      " " +
                                      widget.cart[index].model),
                                ],
                              ),
                              subtitle: Text(
                                  "Цена: " + widget.cart[index].price + " ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              leading: Wrap(children: [
                                Container(
                                    child: Text( "${widget.count} x", style: TextStyle(fontWeight: FontWeight.bold), ),
                                  margin: EdgeInsets.only(top: 15),
                                ),
                                Image(
                                  height: 50,
                                  width: 50,
                                  image: NetworkImage(widget.cart[index].img),
                                ),
                              ]),
                              trailing: IconButton(
                                icon: Icon(Icons.remove_shopping_cart),
                                onPressed: () {
                                  setState(() {
                                    widget.sum -= int.parse(widget.cart[index].price);
                                    widget.cart.remove(widget.cart[index]);
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
