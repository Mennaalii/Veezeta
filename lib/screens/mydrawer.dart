import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vezeeta/screens/call_us.dart';
import 'package:vezeeta/screens/favourite.dart';
import 'package:vezeeta/screens/login.dart';
import 'package:vezeeta/screens/medicine_cart.dart';
import 'package:vezeeta/screens/settings.dart';
import 'package:vezeeta/screens/tabs.dart';
import 'package:vezeeta/widgets/drawer_item.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          DrawerItem(
              text: 'Home',
              icon: Icon(
                Icons.home_filled,
                color: Theme.of(context).primaryColor,
              ),
              route: TabsScreen.routeName),
          SizedBox(
            height: 15,
          ),
          DrawerItem(
              text: 'Settings',
              icon: Icon(Icons.settings),
              route: Settings.routeName),
          SizedBox(
            height: 15,
          ),
          DrawerItem(
              text: 'Favourite',
              icon: Icon(
                Icons.favorite,
                color: Colors.red.shade900,
              ),
              route: Favourite.routeName),
          SizedBox(
            height: 15,
          ),
          DrawerItem(
              text: 'Medicine Cart',
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
              route: MedicineCart.routeName),
          SizedBox(
            height: 15,
          ),
          DrawerItem(
              text: 'Contact us',
              icon: Icon(
                Icons.call,
                color: Colors.green,
              ),
              route: CallUs.routeName),
          SizedBox(
            height: 15,
          ),
          DrawerItem(
              text: 'About us',
              icon: Icon(
                Icons.info,
                color: Colors.yellow.shade500,
              ),
              route: Favourite.routeName),
          SizedBox(
            height: 15,
          ),
          DrawerItem(
              text: 'Logout',
              icon: Icon(
                Icons.logout,
                color: Colors.grey,
              ),
              route: Login.routeName),
        ],
      ),
    );
  }
}
