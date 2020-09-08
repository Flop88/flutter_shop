import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shop/components/goods_card.dart';
import 'package:flutter_shop/model/goods.dart';
import 'dart:convert';

import 'goods_page.dart';

class GoodsScreen extends StatefulWidget {
  @override
  _GoodsScreenState createState() => _GoodsScreenState();
}

class _GoodsScreenState extends State<GoodsScreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: new FutureBuilder(builder: (context, snapshot) {
        var goods = json.decode(snapshot.data.toString());
        return new ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: goods.length,
          itemBuilder: (context, index) {
            // return ListTile( title: new Text(goods[index]['brand']),);
            // return GoodsCard(goods: goods[index]);
            return Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: ListTile(
                title: Wrap(
                  children: [
                    Text(goods[index]['type'] + " ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
                    Text(goods[index]['brand'] + " " + goods[index]['model']),
                  ],
                ),
                subtitle: Text("Цена: " + goods[index]['price'] + " ",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                leading: Image(
                  height: 50,
                  width: 50,
                  image: NetworkImage(goods[index]['img']),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return Scaffold(
                          backgroundColor: Colors.white,
                          appBar: AppBar(
                            title: Text(goods[index]['model']),
                            centerTitle: true,
                          ),
                          body: ListView(
                              children :[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  height: 200,
                                  child: Image(image: NetworkImage(goods[index]['img']),),
                                ),
                                Center(child: Text(goods[index]['model'], style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
                                SizedBox(height: 20,),
                                Text("Описание: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                                Text( goods[index]['description'], style: TextStyle(fontSize: 30),),
                                SizedBox(height: 20,),
                                Text("Цена: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                                Text( goods[index]['price'], style: TextStyle(fontSize: 30),),
                                SizedBox(height: 20,)
                              ]
                          ),
                        );
                      }))
                },
              ),
            );
          },
        );
      },
          future: DefaultAssetBundle.of(context).loadString("assets/goods.json"),
    )
    );
  }
}