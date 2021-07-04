import 'package:flutter/material.dart';

class CountryButton extends StatelessWidget {
  final text;
  CountryButton(this.text);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 50),
      onPressed: () {},
      color: Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(text),
    );
  }
}
