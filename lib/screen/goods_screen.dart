import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/components/buy_button.dart';
import 'package:flutter_shop/components/product_description.dart';
import 'package:flutter_shop/components/product_price_and_img.dart';
import 'package:flutter_shop/model/goods.dart';
import 'package:flutter_shop/screen/goods_list_screen.dart';

import 'cart_screen.dart';

class GoodsPage extends StatelessWidget {
  GoodsPage({Key key, @required this.goods, this.valueSetter})
      : super(key: key);

  final Goods goods;
  final ValueSetter valueSetter;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color colorProduct = Color.fromRGBO(55, 118, 166, 1);

    return Scaffold(
        backgroundColor: colorProduct,
        appBar: AppBar(
          title: Text(goods.model),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cart())),
              },
            )
          ],
          centerTitle: true, ),
        body: ListView(
          children:[
            Column(
              children: <Widget>[
                SizedBox(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.33),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            )),
                        child: Column(
                          children: [
                            ProductDescription(goods: goods),
                            BuyButton(colorProduct: colorProduct, goods: goods,),
                          ],
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text( goods.type, style: TextStyle(color: Colors.white),),
                              Text(goods.model, style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              ProductPriceAndImg(goods: goods),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ]
        ));
  }
}
