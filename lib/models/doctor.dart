import 'package:flutter/cupertino.dart';

class Doctor {
  final id;
  final name;
  final image;
  final category;
  final location;
  final price;
  final rate;
  final waitingTime;
  final reviews;
  final schedule;
  bool? isFav = false;

  Doctor(
      {@required this.category,
      @required this.id,
      @required this.image,
      @required this.location,
      @required this.name,
      @required this.price,
      @required this.rate,
      @required this.reviews,
      @required this.schedule,
      @required this.waitingTime,
      this.isFav});
}
