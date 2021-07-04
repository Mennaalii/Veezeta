import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final text;
  final icon;
  final fn;

  HomeButton(this.text, this.icon, this.fn);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: fn,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon,
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    softWrap: true,
                  ),
                ],
              ),
              Icon(Icons.navigate_next)
            ],
          )),
    );
  }
}
