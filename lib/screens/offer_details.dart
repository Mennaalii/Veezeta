import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/all_offers.dart';

import 'package:vezeeta/widgets/reviews.dart';
import 'package:vezeeta/widgets/time_schedule.dart';

import '../widgets/offer_detail.dart';

import '../widgets/Details.dart';
import '../widgets/information.dart';

class OfferDetails extends StatelessWidget {
  static const routeName = 'offer_details';
  final id;
  var offer;
  OfferDetails({this.id});

  @override
  Widget build(BuildContext context) {
    offer = Provider.of<AllOffers>(context).searchByID(id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Offer Details'),
        actions: [
          IconButton(
              onPressed: () {
                Provider.of<AllOffers>(context, listen: false).toggle(
                  offer.id,
                );
              },
              icon: offer.isFav
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.upload_file))
        ],
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: ListView(
        children: [
          OfferDetail(id: id),
          TimeSchedule(id, false),
          Reviews(offer.reviews),
          Details(),
          Info(),
          // ServiceDetails(),
          //Map(),
        ],
      ),
    );
  }
}
