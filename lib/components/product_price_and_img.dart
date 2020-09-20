
import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';

class product_price_and_img extends StatelessWidget {
  const product_price_and_img({
    Key key,
    @required this.goods,
  }) : super(key: key);

  final Goods goods;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RichText(
            text: TextSpan(
                children:[
                  TextSpan(text: "Цена: \n"),
                  TextSpan(text: "${goods.price} ₽",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold)
                  ),
                ]
            )
        ),
        Expanded(child: Image(image: NetworkImage(goods.img), height: 250,)),
      ],);
  }
}