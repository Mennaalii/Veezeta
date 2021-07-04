import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/all_offers.dart';
import '../widgets/offer_card.dart';

class FavOffersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favOffers = Provider.of<AllOffers>(context).getFavOffers();
    return favOffers.isEmpty
        ? Center(
            child: Column(children: [
            Container(
                height: 300,
                width: 300,
                child: Image.asset('assets/images/offer.png')),
            SizedBox(
              height: 20,
            ),
            Text(
              'No Added Offers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ]))
        : ListView.builder(
            itemBuilder: (ctx, i) => OfferCard(
              id: favOffers[i].id,
              image: favOffers[i].image,
              place: favOffers[i].place,
              price: favOffers[i].price,
              rate: favOffers[i].rate,
              title: favOffers[i].title,
            ),
            itemCount: favOffers.length,
          );
  }
}
