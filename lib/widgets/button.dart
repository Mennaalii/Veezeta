import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final text;
  final function;
  Button(this.text, this.function);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 60),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {
        function;
      },
      child: Container(
          alignment: Alignment.center,
          width: 100,
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
