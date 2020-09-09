import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';
import 'package:flutter_shop/screen/goods_page.dart';

// class GoodsCard extends StatefulWidget {
//   const GoodsCard({ Key key,
//     @required this.goods,
//   }) : super(key: key);
//   GoodsCard()
//
//   final Goods goods;
//
//   @override
//   _GoodsCardState createState() => _GoodsCardState();
// }

class GoodsCard extends StatelessWidget {
  GoodsCard({ Key key,@required this.goods, this.valueSetter, this.cart}) : super(key: key);
  final Goods goods;
  final ValueSetter valueSetter;
  final cart;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      // child: Text(goods.price),
      child: ListTile(
        title: Wrap(
          children: [
            Text(goods.type + " ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
            Text(goods.brand.toString() + " " + goods.model),
          ],
        ),
        subtitle: Text("Цена: " + goods.price + " ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: Image(
          height: 50,
          width: 50,
          image: NetworkImage(goods.img),
        ),
        trailing: IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: () => {
          valueSetter(goods)
        },),
        onTap: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => goods_page(goods: goods)))
        },
      ),
    );
  }
}