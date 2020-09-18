import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';

class Cart extends StatefulWidget {
  final List<Goods> cart;
  static int sum = 0;

  Cart({this.cart});


  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int cartSum = 0;
  // get sum => cartSum;


  @override
  Widget build(BuildContext context) {
    setState(() {
      // widget.cart.forEach((element) {
      //   print("length: ${cartSum + int.parse(element.price)}");
      // });

      // for(final i in widget.cart) {
      //   print("length: ${cartSum + int.parse(i.price)}");
      //   print("Sum: ${cartSum + int.parse(i.price)}");
      // }
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
                      cartSum += int.parse(widget.cart[index].price);
                    return widget.cart.length == 0
                        ? Text(
                            "123") /* Что-то хотел сюда запихнуть, но забыл что. Как вспомню - доделаю */
                        : Card(
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
                              leading: Image(
                                height: 50,
                                width: 50,
                                image: NetworkImage(widget.cart[index].img),
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.remove_shopping_cart),
                                onPressed: () {
                                  setState(() {
                                    // cartSum -= int.parse(widget.cart[index].price);
                                    widget.cart.remove(widget.cart[index]);
                                  });
                                },
                              ),
                            ),
                          );
                  }),
              Divider(),
              Text(
                "Итого: $cartSum",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,),
              )
            ],
          ),
        ]));
  }

  
}

