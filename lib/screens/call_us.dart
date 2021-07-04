import 'package:flutter/material.dart';
import 'package:vezeeta/screens/mydrawer.dart';

class CallUs extends StatelessWidget {
  static const routeName = 'call_us';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: MyDrawer(),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            'Contact Us',
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
                shape: BoxShape.rectangle,
              ),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none),
                maxLines: 5,
              )),
          SizedBox(
            height: 50,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'For more info call',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                  Text('16611',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                ],
              )),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            padding: EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Theme.of(context).accentColor,
            onPressed: () {},
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Send',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ],
      )),
    );
  }
}
