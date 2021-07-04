import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/all_offers.dart';
import 'package:vezeeta/widgets/stars.dart';

class OfferDetail extends StatelessWidget {
  final id;

  OfferDetail({this.id});

  @override
  Widget build(BuildContext context) {
    final offer = Provider.of<AllOffers>(context).searchByID(id);
    return Card(
      color: Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  'assets/images/${offer.image}.png',
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.book_online,
                    color: Colors.red,
                  ),
                  Text('${offer.reservations} reservations')
                ],
              ),
              Divider(),
              Column(
                children: [
                  Icon(Icons.remove_red_eye, color: Colors.green),
                  Text('${offer.views} views')
                ],
              ),
            ],
          ),
          ListTile(
            title: Text(
              offer.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text(offer.place),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Stars(offer.rate)),
          Container(
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: Text(
                '${offer.price} LE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
