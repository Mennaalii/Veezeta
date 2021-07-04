import 'package:flutter/material.dart';
import 'package:vezeeta/screens/doctors_categories.dart';
import '../widgets/home_button.dart';

class FollowUp extends StatelessWidget {
  static const routeName = 'follow_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      backgroundColor: Theme.of(context).accentColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 70),
        children: [
          Card(
              margin: EdgeInsets.symmetric(vertical: 30),
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Theme.of(context).primaryColor,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 70),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          HomeButton(
                              'Book a Specialized Dr',
                              Icon(
                                Icons.call,
                                color: Colors.teal,
                              ), () {
                            Navigator.of(context)
                                .pushNamed(DoctorsCategories.routeName);
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          HomeButton(
                              'Get Corona Consultation',
                              Icon(
                                Icons.coronavirus,
                                color: Colors.teal,
                              ),
                              () {}),
                        ],
                      ))))
        ],
      ),
    );
  }
}
