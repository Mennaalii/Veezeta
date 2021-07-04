import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Stars extends StatelessWidget {
  final rating;
  Stars(this.rating);
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 25,
      ignoreGestures: true,
      initialRating: rating,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.yellow.shade700,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
