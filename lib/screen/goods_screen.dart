import 'package:flutter/material.dart';
import 'package:flutter_shop/components/goods_card.dart';
import 'package:flutter_shop/model/goods.dart';
import 'package:flutter_shop/screen/cart_screen.dart';


class GoodsScreen extends StatefulWidget {


  @override
  _GoodsScreenState createState() => _GoodsScreenState();
}

class _GoodsScreenState extends State<GoodsScreen> {

  List<Goods> cart = [];
  int sum = 0;


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
              cart.length != 0 ? Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(cart: cart, sum: sum))) : null
            },
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        child: new FutureBuilder(builder: (context, snapshot) {

          final goods = goodsFromJson(snapshot.data.toString());

          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: goods.length,
            itemBuilder: (context, index) {
              return GoodsCard(goods: goods[index], valueSetter: (selectedProduct) {
                setState(() {
                  cart.add(goods[index]);
                  print("Добавили товар - ${goods[index].model}");
                  sum = 0;
                  cart.forEach((element) {
                    sum = sum + int.parse(element.price);
                    print("Sum: $sum");
                  });
                  print(cart.length);
                  //update
                });
              }, cart: cart,);
            },
          );
        },
            future: DefaultAssetBundle.of(context).loadString("assets/goods.json"),
      )
      ),
    );
  }
}
