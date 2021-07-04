import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final text;
  final icon;
  final function;
  LongButton({this.text, this.icon, this.function});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        padding: EdgeInsets.all(15),
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: function,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          icon,
          text,
          Icon(
            Icons.facebook,
            color: Colors.white,
          )
        ]));
  }
}
