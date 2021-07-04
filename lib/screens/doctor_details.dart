import 'package:flutter/material.dart';

import 'package:vezeeta/widgets/doctor_details_card.dart';
import '../widgets/information.dart';
import '../widgets/reviews.dart';
import '../widgets/time_schedule.dart';
import 'package:provider/provider.dart';
import '../providers/doctors.dart';

class DoctorDetails extends StatelessWidget {
  static const routeName = 'doctor_details';

  var doctor;

  final id;
  DoctorDetails({this.id});
  @override
  Widget build(BuildContext context) {
    doctor = Provider.of<Doctors>(context).searchByID(id);
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text('About ${doctor.name}'),
        actions: [
          IconButton(
              onPressed: () {
                Provider.of<Doctors>(context, listen: false).toggle(id);
              },
              icon: doctor.isFav
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share))
        ],
      ),
      body: ListView(
        children: [
          DoctorDetailsCard(
              cat: doctor.category,
              image: doctor.image,
              name: doctor.name,
              price: doctor.price,
              time: doctor.waitingTime,
              rating: doctor.rate),
          TimeSchedule(doctor.id, true),
          Info(),
          Reviews(doctor.reviews),
        ],
      ),
    );
  }
}
