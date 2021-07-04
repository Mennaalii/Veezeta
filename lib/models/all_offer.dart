import 'package:flutter/cupertino.dart';

class AllOffer {
  final id;
  final title;
  final place;
  final image;
  final price;
  final rate;
  final schedule;
  final views;
  final reservations;
  final reviews;
  bool? isFav = false;

  AllOffer(
      {@required this.id,
      @required this.image,
      @required this.place,
      @required this.price,
      @required this.rate,
      @required this.title,
      @required this.reservations,
      @required this.reviews,
      @required this.schedule,
      @required this.views,
      this.isFav});
}
