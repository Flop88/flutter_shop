import 'package:flutter/foundation.dart';
import 'package:flutter_shop/model/goods.dart';

class CartItem {
  final Goods product;
  int quantity;

  static List<Goods> instance = [];

  CartItem(
      {@required this.product,
        @required this.quantity
      });

  static addProduct(Goods goods) {
    instance.add(goods);
  }

  static removeProduct(Goods goods) {
    instance.remove(goods);
  }
}
