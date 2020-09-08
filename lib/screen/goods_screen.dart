import 'package:flutter/material.dart';
import 'package:flutter_shop/components/goods_card.dart';
import 'package:flutter_shop/model/goods.dart';


class GoodsScreen extends StatefulWidget {
  @override
  _GoodsScreenState createState() => _GoodsScreenState();
}

class _GoodsScreenState extends State<GoodsScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new FutureBuilder(builder: (context, snapshot) {

        final goods = goodsFromJson(snapshot.data.toString());

        return new ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: goods.length,
          itemBuilder: (context, index) {
            return GoodsCard(goods: goods[index]);
          },
        );
      },
          future: DefaultAssetBundle.of(context).loadString("assets/goods.json"),
    )
    );
  }
}
