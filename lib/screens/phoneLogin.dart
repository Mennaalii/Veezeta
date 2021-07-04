import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneLogin extends StatelessWidget {
  static const routeName = 'phone_login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Verification Code',
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
                shape: BoxShape.rectangle,
              ),
              child: TextField(
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
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
                'Verify',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ]),
          )
        ],
      )),
    );
  }
}
