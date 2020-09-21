import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';
import 'package:flutter_shop/screen/goods_list_screen.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key key,
    @required this.colorProduct,
    @required this.goods,
  }) : super(key: key);

  final Color colorProduct;
  final Goods goods;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: SizedBox(
          height: 50,
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)),
            color: colorProduct,
            onPressed: () {
              GoodsScreen.cart.add(goods);
            },
            child: Text(
              "Купить".toUpperCase(),
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              )
              ,
            ),
          ),
        ),
      ),
    );
  }
}