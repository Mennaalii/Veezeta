import 'package:flutter/material.dart';
import 'package:vezeeta/screens/my_booking.dart';
import 'package:vezeeta/screens/my_offers.dart';
import 'package:vezeeta/screens/mydrawer.dart';

class Appointment extends StatelessWidget {
  static const routeName = 'appoinmment';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: MyDrawer(),
          ),
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text('Bookings'),
                ),
                Tab(
                  child: Text('Offers'),
                )
              ],
            ),
            title: Text('My Appointments'),
          ),
          backgroundColor: Colors.white,
          body: TabBarView(children: [MyBookings(), MyOffers()])),
    );
  }
}
