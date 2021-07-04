import 'package:flutter/material.dart';
import 'package:vezeeta/screens/appointments.dart';
import 'package:vezeeta/screens/search.dart';

import 'package:vezeeta/screens/offers_list.dart';
import 'package:vezeeta/screens/pharmacy.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = 'tabs_screen';
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [Search(), OffersList(), Pharmacy(), Appointment()];
  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).accentColor,
        unselectedItemColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: selectedIndex,
        onTap: onItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.local_offer),
            title: Text('Offers'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.local_pharmacy),
            title: Text('Pharmacy'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.lock_clock),
            title: Text('Appointments'),
          ),
        ],
      ),
    );
  }
}
