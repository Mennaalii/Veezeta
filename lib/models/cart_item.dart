import 'package:flutter/cupertino.dart';

class CartItem {
  final image;
  final name;
  final type;
  final price;
  final id;
  var quantity;
  var willDelete;

  CartItem(
      {@required this.id,
      @required this.image,
      @required this.name,
      @required this.price,
      @required this.type,
      this.quantity,
      @required this.willDelete});
}
