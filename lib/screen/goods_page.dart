import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';


class goods_page extends StatelessWidget {
  goods_page({Key key, @required this.goods, this.valueSetter, this.cart})
      : super(key: key);

  final Goods goods;
  final ValueSetter valueSetter;
  List<Goods> cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(goods.model),
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10.0),
          height: 200,
          child: Image(
            image: NetworkImage(goods.img),
          ),
        ),
        Center(
            child: Text(
          goods.model,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 20,
        ),
        Text(
          "Описание: ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text(
          goods.description,
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Цена: ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text(
          goods.price,
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            valueSetter(goods);
          },
          child: Container(
            height: 60,
            color: Colors.lightBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_shopping_cart,
                  size: 50,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Купить",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
