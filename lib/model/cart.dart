import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_shop/model/goods.dart';

class CartItem {
  final Goods product;
  int quantity = 0;

  static List<Goods> instance = [];
  static int sum = 0;


  CartItem(
      {@required this.product,
      });

  static addProduct(Goods goods) {
    instance.add(goods);
  }

  static removeProduct(Goods goods) {
    instance.remove(goods);
  }
}
