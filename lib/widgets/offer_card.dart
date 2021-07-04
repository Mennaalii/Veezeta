import 'package:flutter/material.dart';
import 'package:vezeeta/screens/offer_details.dart';
import '../widgets/stars.dart';
import 'package:vezeeta/widgets/stars.dart';

class OfferCard extends StatelessWidget {
  final image;
  final title;
  final place;
  final price;
  final rate;
  final id;
  OfferCard(
      {this.title, this.place, this.price, this.image, this.rate, this.id});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => OfferDetails(
                    id: id,
                  )));
        },
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 15),
          color: Theme.of(context).accentColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                      'assets/images/$image.png',
                      fit: BoxFit.cover,
                    )),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text(title),
                subtitle: Text(place),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Stars(rate)),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$price LE',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      RaisedButton(
                          color: Theme.of(context).primaryColor,
                          onPressed: () {},
                          child: Text('Reserve Now'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))
                    ],
                  ))
            ],
          ),
        ));
  }
}
