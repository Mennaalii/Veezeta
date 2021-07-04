import 'package:flutter/material.dart';

class Thanks extends StatelessWidget {
  static const routeName = 'thanks';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          SizedBox(
            height: 70,
          ),
          Text(
            'Thank You',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.done,
            size: 120,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'We will call you within minutes',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
