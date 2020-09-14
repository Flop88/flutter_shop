import 'package:flutter/foundation.dart';

class CartItem {
  final int id;
  final String brand;
  final String model;
  final String type;
  final String img;
  final String price;
  final int quantity;

  CartItem(
      {@required this.id,
        @required this.brand,
        @required this.model,
        @required this.type,
        @required this.img,
        @required this.price,
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

  void addItem(String pdtid, int id, String brand, String model, String type, String img, String price) {
    if (_items.containsKey(pdtid)) {
      _items.update(
          pdtid,
              (existingCartItem) => CartItem(
              id: existingCartItem.id,
              brand: existingCartItem.brand,
              model: existingCartItem.model,
              type: existingCartItem.type,
              img: existingCartItem.img,
              quantity: existingCartItem.quantity + 1,
              price: existingCartItem.price));
    } else {
      _items.putIfAbsent(
          pdtid,
              () => CartItem(
                id: id,
                brand: brand,
                model: model,
                type: type,
                img: img,
                price: price,
                quantity: 1
          ));
    }
    notifyListeners();
  }

  void removeItem(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void removeSingleItem(String id) {
    if (!_items.containsKey(id)) {
      return;
    }
    if (_items[id].quantity > 1) {
      _items.update(
          id,
              (existingCartItem) => CartItem(
              id: existingCartItem.id,
              brand: existingCartItem.brand,
              model: existingCartItem.model,
              type: existingCartItem.type,
              img: existingCartItem.img,
              quantity: existingCartItem.quantity - 1,
              price: existingCartItem.price));
    }
    notifyListeners();
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += double.tryParse(cartItem.price) * cartItem.quantity;
    });
    return total;
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}