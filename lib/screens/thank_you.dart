import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
  final price;
  final image;
  final name;
  final cat;
  final location;
  final startDate;
  final endDate;

  ThankYou(
      {this.image,
      this.price,
      this.name,
      this.cat,
      this.location,
      this.endDate,
      this.startDate});
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
            'Your booking is successful',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              elevation: 10,
              color: Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            'assets/images/$image.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      cat,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.schedule,
                                color: Theme.of(context).primaryColor,
                                size: 30),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '$startDate : $endDate',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Theme.of(context).primaryColor,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(location,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.money,
                              color: Theme.of(context).primaryColor,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('$price' + 'LE',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ])),
        ],
      ),
    );
  }
}
