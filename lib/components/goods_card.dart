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

class GoodsCard extends StatefulWidget {
  GoodsCard({ Key key,@required this.goods, this.valueSetter, this.cart}) : super(key: key);
  final Goods goods;
  final ValueSetter valueSetter;
  List<Goods> cart;

  @override
  _GoodsCardState createState() => _GoodsCardState();
}

class _GoodsCardState extends State<GoodsCard> {


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      // child: Text(goods.price),
      child: ListTile(
        title: Wrap(
          children: [
            Text(widget.goods.type + " ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
            Text(widget.goods.brand.toString() + " " + widget.goods.model),
          ],
        ),
        subtitle: Text("Цена: " + widget.goods.price + " ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: Image(
          height: 50,
          width: 50,
          image: NetworkImage(widget.goods.img),
        ),
        trailing: IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: () => {
          widget.valueSetter(widget.goods)
        },),
        onTap: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => goods_page(goods: widget.goods, valueSetter: (selectedProduct) {
            setState(() {
              widget.cart.add(widget.goods);
            });
          },)
          ))
        },
      ),
    );
  }
}