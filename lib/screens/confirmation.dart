import 'package:flutter/material.dart';
import 'package:vezeeta/providers/bookings.dart';
import 'package:vezeeta/providers/all_offers.dart';
import 'package:vezeeta/providers/offers.dart';
import 'package:vezeeta/screens/thank_you.dart';
import 'package:provider/provider.dart';
import '../providers/doctors.dart';

class Confirmation extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final id;
  final isDr;
  final startDate;
  final endDate;
  final theDay;
  final theDate;
  Confirmation(
      {this.id,
      this.isDr,
      this.endDate,
      this.startDate,
      this.theDate,
      this.theDay});

  @override
  Widget build(BuildContext context) {
    final doctor = Provider.of<Doctors>(context).searchByID(id);
    final offer = Provider.of<AllOffers>(context).searchByID(id);

    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          title: Text('Confirm reservation'),
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Card(
                  elevation: 10,
                  color: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: isDr
                                  ? Image.asset(
                                      'assets/images/${doctor.image}.png',
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      'assets/images/${offer.image}.png',
                                      fit: BoxFit.cover,
                                    )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          isDr ? doctor.name : offer.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          isDr ? doctor.category : offer.place,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ])),
              Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Theme.of(context).accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Confirmation',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(children: [
                                  Icon(
                                    Icons.perm_identity,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Container(
                                          child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Enter your full name';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Enter full name',
                                      border: InputBorder.none,
                                    ),
                                  )))
                                ])),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(children: [
                                  Icon(
                                    Icons.call,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Container(
                                          child: TextFormField(
                                    onFieldSubmitted: (_) {
                                      formKey.currentState!.validate();
                                    },
                                    validator: (val) {
                                      if (!val!.startsWith('01')) {
                                        return 'Invalide phone number';
                                      }
                                      if (val.length < 11) {
                                        return 'Too short phone number';
                                      }
                                      if (val.isEmpty) {
                                        return 'Enter your phone number';
                                      }
                                      if (val.length > 11) {
                                        return 'Too long phone number';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Enter phone number',
                                      border: InputBorder.none,
                                    ),
                                  )))
                                ]))
                          ],
                        ))),
              ),
              Card(
                color: Theme.of(context).accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.schedule,
                              color: Theme.of(context).primaryColor, size: 30),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '$startDate : $endDate',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Theme.of(context).primaryColor,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(isDr ? '${doctor.location}' : '${offer.place}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.money,
                            color: Theme.of(context).primaryColor,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              isDr
                                  ? '${doctor.price}'
                                  : '${offer.price}' + 'LE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  formKey.currentState!.validate();
                  if (formKey.currentState!.validate() == true) {
                    if (isDr) {
                      Provider.of<Bookings>(context, listen: false).addBooking(
                          drName: doctor.name,
                          drCat: doctor.category,
                          theDate: theDate,
                          image: doctor.image,
                          theDay: theDay);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => ThankYou(
                                image: doctor.image,
                                price: doctor.price,
                                name: doctor.name,
                                cat: doctor.category,
                                location: doctor.location,
                                endDate: endDate,
                                startDate: startDate,
                              )));
                    } else {
                      Provider.of<Offers>(context, listen: false).addOffers(
                          title: offer.title,
                          place: offer.place,
                          theDate: theDate,
                          image: offer.image,
                          theDay: theDay);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => ThankYou(
                                image: offer.image,
                                price: offer.price,
                                name: offer.title,
                                cat: offer.place,
                                location: offer.place,
                                startDate: startDate,
                                endDate: endDate,
                              )));
                    }
                  }
                },
                child: Text(
                  'Confirm',
                  style: TextStyle(fontSize: 15),
                ),
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                height: 10,
              )
            ])));
  }
}
