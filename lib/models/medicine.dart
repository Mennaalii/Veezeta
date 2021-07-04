import 'package:flutter/cupertino.dart';

class Medicine {
  final id;
  final name;
  final image;
  final price;
  final category;
  final type;

  Medicine(
      {@required this.id,
      @required this.name,
      @required this.image,
      @required this.category,
      @required this.price,
      @required this.type});
}
