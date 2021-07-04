import 'package:flutter/material.dart';

class TextFieldCard extends StatelessWidget {
  final icon;
  final hint;
  TextFieldCard({this.hint, this.icon});
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Container(
                      child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: hint,
                  border: InputBorder.none,
                ),
              )))
            ])));
  }
}
