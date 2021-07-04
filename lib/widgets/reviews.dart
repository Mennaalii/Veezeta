import 'package:flutter/material.dart';
import 'package:vezeeta/widgets/review_card.dart';

class Reviews extends StatelessWidget {
  final reviews;

  Reviews(this.reviews);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.reviews,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Reviews',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 180,
                  width: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...reviews.map((rev) => ReviewCard(rev)).toList()
                    ],
                  ),
                ),
              ],
            )));
  }
}
