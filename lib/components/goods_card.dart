import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';
import 'package:flutter_shop/screen/goods_page.dart';

class GoodsCard extends StatelessWidget {
  const GoodsCard({
    Key key,
    @required this.goods,
  }) : super(key: key);

  final Goods goods;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ListTile(
        title: Wrap(
            children: [
              Text(goods.type + " ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
              Text(goods.brand + " " + goods.model),
            ],
        ),
        subtitle: Text("Цена: " + goods.price + " ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: Image(
          height: 50,
          width: 50,
          image: NetworkImage(goods.img),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => GoodsPage(goods: goods)))
        },
      ),
    );
  }
}
