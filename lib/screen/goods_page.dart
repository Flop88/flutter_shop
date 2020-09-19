import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/model/goods.dart';


class goods_page extends StatelessWidget {
  goods_page({Key key, @required this.goods, this.valueSetter})
      : super(key: key);

  final Goods goods;
  final ValueSetter valueSetter;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
          backgroundColor: Color.fromRGBO(55, 118, 166, 1),
          appBar: AppBar(
            title: Text(goods.model),
            centerTitle: true,
          ),
          body:  SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 2.4 ,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.32),
                  height: size.height * 2.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(goods.type, style: TextStyle(color: Colors.white),),
                          Text(goods.model, style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold
                        ),),
                          Row(
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
                                          fontWeight: FontWeight.bold
                                    )
                                    ),
                                  ]
                                )
                              ),
                              Expanded(child: Image(image: NetworkImage(goods.img), height: 250,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Text(goods.description, style: TextStyle(
                              height: 1.5
                            ),),
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    )
    );
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   appBar: AppBar(
    //     title: Text(goods.model),
    //     centerTitle: true,
    //   ),
    //   body: Container(
    //     margin: EdgeInsets.all(10),
    //     child: ListView(children: [
    //       Container(
    //         alignment: Alignment.center,
    //         padding: EdgeInsets.symmetric(vertical: 10.0),
    //         height: 200,
    //         child: Image(
    //           image: NetworkImage(goods.img),
    //         ),
    //       ),
    //       Center(
    //           child: Text(
    //             goods.model,
    //             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    //           )),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Text(
    //         "Описание: ",
    //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    //       ),
    //       Text(
    //         goods.description,
    //         style: TextStyle(fontSize: 20),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Text(
    //         "Цена: ",
    //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    //       ),
    //       Text(
    //         goods.price,
    //         style: TextStyle(fontSize: 30),
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       InkWell(
    //         onTap: () {
    //           valueSetter(goods);
    //         },
    //         child: Container(
    //           height: 60,
    //           color: Colors.lightBlue,
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Icon(
    //                 Icons.add_shopping_cart,
    //                 size: 50,
    //                 color: Colors.white,
    //               ),
    //               SizedBox(
    //                 width: 10,
    //               ),
    //               Text(
    //                 "Купить",
    //                 style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 24,
    //                     fontWeight: FontWeight.bold),
    //               )
    //             ],
    //           ),
    //         ),
    //       )
    //     ]),
    //   ),
    // );
  }
}