import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';

class Cart extends StatefulWidget {

  final List<Goods> cart;
  int sum = 0;

  Cart({this.cart, this.sum});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {

    initState();
    print("Sum: ${widget.sum}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Корзина"),
        centerTitle: true,
      ),
      body: Wrap(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: widget.cart.length,
            itemBuilder: (context, index) {
              return widget.cart.length == 0 ? Text("123") /* Что-то хотел сюда запихнуть, но забыл что. Как вспомню - доделаю */ : Card(
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: ListTile(
                  title: Wrap(
                    children: [
                      Text(widget.cart[index].type + " ", style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),),
                      Text(widget.cart[index].brand.toString() + " " + widget.cart[index].model),
                    ],
                  ),
                  subtitle: Text("Цена: " + widget.cart[index].price + " ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  leading: Image(
                    height: 50,
                    width: 50,
                    image: NetworkImage(widget.cart[index].img),
                  ),
                  trailing: IconButton(icon: Icon(Icons.remove_shopping_cart), onPressed: () {
                    widget.cart.remove(widget.cart[index]);
                  },),
                ),
              );
            }
          ),
          Divider(),
          Text("Итого: ${widget.sum}", style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),)
        ],
      )
    );
  }

  @override
  void initState() {
    for(int i = 0; i < widget.cart.length; i++) {
      print(int.parse(widget.cart[i].price));
      widget.sum = widget.sum + int.parse(widget.cart[i].price);
      print("Widget.sum: ${widget.sum}");
    }
  }
}
