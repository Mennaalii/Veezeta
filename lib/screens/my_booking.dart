import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/bookings.dart';
import 'package:vezeeta/widgets/appointment_card.dart';

class MyBookings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookings = Provider.of<Bookings>(context).getBookings();
    return bookings.isEmpty
        ? Center(
            child: Column(children: [
            SizedBox(height: 60),
            Container(
                height: 300,
                width: 300,
                child: Image.asset('assets/images/booking.png')),
            SizedBox(
              height: 20,
            ),
            Text(
              'No Added Bookings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ]))
        : ListView.builder(
            itemBuilder: (ctx, i) => AppointmentCard(
              cat: bookings[i].drCat,
              image: bookings[i].image,
              name: bookings[i].drName,
              theDate: bookings[i].theDate,
              theDay: bookings[i].theDay,
            ),
            itemCount: bookings.length,
          );
  }
}
