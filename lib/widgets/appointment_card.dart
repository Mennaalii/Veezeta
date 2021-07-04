import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final name;
  final cat;
  final theDate;
  final theDay;
  final image;
  AppointmentCard({this.cat, this.image, this.name, this.theDate, this.theDay});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Theme.of(context).accentColor,
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(children: [
        ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: Container(
              height: 120,
              width: 150,
              child: Image.asset(
                'assets/images/$image.png',
                fit: BoxFit.cover,
              ),
            )),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              cat,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Theme.of(context).primaryColor,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Container(
                        width: 100,
                        child: Column(children: [
                          Text(
                            theDay,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            theDate,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ])))),
          ],
        ),
      ]),
    );
  }
}
