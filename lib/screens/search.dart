import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vezeeta/screens/choose_doctor.dart';

import 'package:vezeeta/screens/follow_up.dart';
import 'package:vezeeta/screens/home_visit.dart';
import 'package:vezeeta/screens/offers_list.dart';
import 'package:vezeeta/screens/pharmacy.dart';

import 'package:vezeeta/widgets/home_button.dart';
import './mydrawer.dart';

class Search extends StatelessWidget {
  static const routeName = 'search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: ListView(
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
                              'Book a Dr Appointment',
                              Icon(
                                Icons.sick,
                                color: Colors.red,
                              ), () {
                            Navigator.of(context)
                                .pushNamed(ChooseDoctor.routeName);
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          HomeButton(
                              'Book a Teleconsultation',
                              Icon(
                                Icons.call,
                                color: Colors.green,
                              ), () {
                            Navigator.of(context).pushNamed(FollowUp.routeName);
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          HomeButton(
                              'Book a Service or Operation',
                              Icon(
                                Icons.medical_services,
                                color: Colors.black87,
                              ), () {
                            Navigator.of(context)
                                .pushNamed(OffersList.routeName);
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          HomeButton(
                              'Book a Home Visit Dr',
                              Icon(
                                Icons.home_filled,
                                color: Colors.blue,
                              ), () {
                            Navigator.of(context)
                                .pushNamed(HomeVisit.routeName);
                          }),
                          SizedBox(
                            height: 10,
                          ),
                          HomeButton(
                              'Order your Medicines',
                              Icon(
                                Icons.medication,
                                color: Colors.redAccent,
                              ), () {
                            Navigator.of(context).pushNamed(Pharmacy.routeName);
                          }),
                        ],
                      ))))
        ],
      ),
    );
  }
}
