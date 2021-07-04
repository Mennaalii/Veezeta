import 'package:flutter/cupertino.dart';
import 'package:vezeeta/models/cart_item.dart';

class Cart with ChangeNotifier {
  List<CartItem> _cartList = [];

  List<CartItem> getCart() {
    return [..._cartList];
  }

  void incrementQuantity(String id) {
    int index = _cartList.indexWhere((item) => item.id == id);
    _cartList[index].quantity = _cartList[index].quantity + 1;
    if (_cartList[index].quantity > 0) {
      _cartList[index].willDelete = false;
    }
    notifyListeners();
  }

  void decrementQuantity(String id) {
    int index = _cartList.indexWhere((item) => item.id == id);
    if (_cartList[index].quantity > 0) {
      _cartList[index].quantity = _cartList[index].quantity - 1;
    }
    if (_cartList[index].quantity == 1) {
      _cartList[index].willDelete = true;
    }
    notifyListeners();
  }

  void removeFromCart(String id) {
    _cartList.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  void addToCart({
    String? id,
    String? image,
    String? name,
    String? price,
    String? type,
  }) {
    if (_cartList.any((item) => item.id == id)) {
    } else {
      _cartList.add(CartItem(
          id: id,
          image: image,
          name: name,
          price: price,
          type: type,
          quantity: 1,
          willDelete: false));
    }

    notifyListeners();
  }
}
