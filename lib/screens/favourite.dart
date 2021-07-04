import 'package:flutter/material.dart';

import 'package:vezeeta/screens/fav_drs_list.dart';
import 'package:vezeeta/screens/fav_offers_list.dart';
import 'package:vezeeta/screens/mydrawer.dart';

class Favourite extends StatelessWidget {
  static const routeName = 'favourite';
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
                  child: Text('Doctors'),
                ),
                Tab(
                  child: Text('Offers'),
                )
              ],
            ),
            title: Text('Favourites'),
          ),
          backgroundColor: Colors.white,
          body: TabBarView(children: [FavDrsList(), FavOffersList()])),
    );
  }
}
