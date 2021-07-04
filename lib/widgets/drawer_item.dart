import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final text;
  final icon;
  final route;
  DrawerItem({this.text, this.icon, this.route});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(route);
        },
        child: Card(
            elevation: 0,
            color: Theme.of(context).accentColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    icon,
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ))));
  }
}
