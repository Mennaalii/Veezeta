import 'package:flutter/material.dart';
import 'package:vezeeta/widgets/stars.dart';

class ReviewCard extends StatelessWidget {
  final review;

  ReviewCard(this.review);
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.grey, width: 1)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stars(5.0),
              SizedBox(height: 10),
              Container(
                  width: 150,
                  height: 70,
                  child: Text(
                    review,
                    style: TextStyle(fontSize: 18),
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Mohamed Ashraf',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              )
            ],
          ),
        ));
  }
}
