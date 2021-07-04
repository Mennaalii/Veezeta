import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/offers.dart';
import 'package:vezeeta/widgets/appointment_card.dart';

class MyOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final offers = Provider.of<Offers>(context).getMyOffer();
    return offers.isEmpty
        ? Center(
            child: Column(children: [
            SizedBox(height: 60),
            Container(
                height: 300,
                width: 300,
                child: Image.asset('assets/images/offer.png')),
            SizedBox(
              height: 20,
            ),
            Text(
              'No Added offers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ]))
        : ListView.builder(
            itemBuilder: (ctx, i) => AppointmentCard(
              cat: offers[i].place,
              image: offers[i].image,
              name: offers[i].title,
              theDate: offers[i].theDate,
              theDay: offers[i].theDay,
            ),
            itemCount: offers.length,
          );
  }
}
