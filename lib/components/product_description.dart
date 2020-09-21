import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.goods,
  }) : super(key: key);

  final Goods goods;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90, left: 15, right: 10, bottom: 30),
      child: Text(goods.description, style: TextStyle(
          height: 1.5
      ),),
    );
  }
}
