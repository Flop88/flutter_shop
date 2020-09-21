import 'package:flutter/foundation.dart';
import 'package:flutter_shop/model/goods.dart';

class CartItem {
  final Goods product;
  int quantity;

  CartItem(
      {@required this.product,
        @required this.quantity
      });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  // void addItem(String pdtid, int id, String brand, String model, String type, String img, String price) {
  //   if (_items.containsKey(pdtid)) {
  //     _items.update(
  //         pdtid,
  //             (existingCartItem) => CartItem(
  //             product: existingCartItem.product,
  //             quantity: existingCartItem.quantity + 1,);
  //   } else {
  //     _items.putIfAbsent(
  //         pdtid,
  //             () => CartItem(
  //               product: product,
  //               quantity: 1
  //         ));
  //   }
  //   notifyListeners();
  // }
  //
  // void removeItem(String id) {
  //   _items.remove(id);
  //   notifyListeners();
  // }
  //
  // void removeSingleItem(String id) {
  //   if (!_items.containsKey(id)) {
  //     return;
  //   }
  //   if (_items[id].quantity > 1) {
  //     _items.update(
  //         id,
  //             (existingCartItem) => CartItem(
  //             product: existingCartItem.product,
  //             quantity: existingCartItem.quantity - 1,);
  //   }
  //   notifyListeners();
  // }
  //
  // double get totalAmount {
  //   var total = 0.0;
  //   _items.forEach((key, cartItem) {
  //     total += double.tryParse(cartItem.price) * cartItem.quantity;
  //   });
  //   return total;
  // }

  void clear() {
    _items = {};
    notifyListeners();
  }
}