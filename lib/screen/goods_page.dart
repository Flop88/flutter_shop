import 'package:flutter/material.dart';
import 'package:flutter_shop/model/Goods.dart';


class GoodsPage extends StatelessWidget {

  final Goods goods;

  // In the constructor, require a Todo.
  GoodsPage({Key key, @required this.goods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Интернет магазин" + goods.model),
        centerTitle: true,
      ),
    );
  }
}



