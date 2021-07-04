import 'package:flutter/cupertino.dart';

class Booking {
  final drName;
  final theDate;
  final theDay;
  final drCat;
  final image;

  Booking(
      {@required this.drCat,
      @required this.drName,
      @required this.theDate,
      @required this.image,
      @required this.theDay});
}
