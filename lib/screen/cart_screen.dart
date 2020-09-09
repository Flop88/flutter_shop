import 'package:flutter/material.dart';
import 'package:flutter_shop/components/goods_card.dart';
import 'package:flutter_shop/model/goods.dart';

class Cart extends StatelessWidget {

  final List<Goods> cart;
  int sum;

  Cart({this.cart, this.sum});


  @override
  Widget build(BuildContext context) {
    print("Goods in cart: ${cart.length}");
    print("Sum goods: $sum");
    print("First Goods: ${cart[0].model}");
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
            itemCount: cart.length,
            itemBuilder: (context, index) {
              return cart.length == 0 ? Text("123") : Card(
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: ListTile(
                  title: Wrap(
                    children: [
                      Text(cart[index].type + " ", style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),),
                      Text(cart[index].brand.toString() + " " + cart[index].model),
                    ],
                  ),
                  subtitle: Text("Цена: " + cart[index].price + " ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  leading: Image(
                    height: 50,
                    width: 50,
                    image: NetworkImage(cart[index].img),
                  ),
                  trailing: IconButton(icon: Icon(Icons.remove_shopping_cart), onPressed: () {
                    cart.remove(cart[index]);
                    sum = sum - int.parse(cart[index].price);
                  },),
                ),
              );
            }
          ),
          Divider(),
          Text("Итого: - $sum", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      )
    );
  }
}
