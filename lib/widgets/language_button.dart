import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final text;
  LanguageButton(this.text);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 50),
      onPressed: () {},
      color: Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Theme.of(context).primaryColor)),
      child: Text(text),
    );
  }
}
