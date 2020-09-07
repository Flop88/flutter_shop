import 'package:flutter/material.dart';
import 'package:flutter_shop/model/Goods.dart';


class GoodsPage extends StatelessWidget {

  final Goods goods;

  // In the constructor, require a Todo.
  GoodsPage({Key key, @required this.goods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(goods.model),
        centerTitle: true,
      ),
      body: ListView(
        children :[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            height: 200,
            child: Image(image: NetworkImage(goods.img),),
          ),
          Center(child: Text(goods.model, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
          SizedBox(height: 20,),
          Text("Описание: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          Text( goods.description, style: TextStyle(fontSize: 30),),
          SizedBox(height: 20,),
          Text("Цена: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          Text( goods.price, style: TextStyle(fontSize: 30),),
          SizedBox(height: 20,)
        ]
      ),
    );
  }
}



