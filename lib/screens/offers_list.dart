import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/all_offers.dart';
import 'package:vezeeta/screens/mydrawer.dart';
import 'package:vezeeta/widgets/offer_card.dart';

import 'package:vezeeta/widgets/search_bar.dart';

class OffersList extends StatefulWidget {
  static const routeName = 'offers';

  @override
  _OffersListState createState() => _OffersListState();
}

class _OffersListState extends State<OffersList> {
  var offers;
  var flag = false;
  @override
  void didChangeDependencies() {
    if (flag == false) {
      offers = Provider.of<AllOffers>(
        context,
      ).getOffers();
      flag = true;
    }
    super.didChangeDependencies();
  }

  void filterByName(String val) {
    setState(() {
      offers = Provider.of<AllOffers>(context, listen: false).filterByName(val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Offers'),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          SearchBar(filterByName),
          SizedBox(
            height: 10,
          ),
          ...offers
              .map((offer) => OfferCard(
                    image: offer.image,
                    place: offer.place,
                    price: offer.price,
                    title: offer.title,
                    rate: offer.rate,
                    id: offer.id,
                  ))
              .toList(),
        ],
      ),
    );
  }
}
