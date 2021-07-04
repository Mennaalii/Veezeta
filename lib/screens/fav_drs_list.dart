import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/doctors.dart';

import 'package:vezeeta/widgets/doctor_list_card.dart';

class FavDrsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favDoctors = Provider.of<Doctors>(context).getFavDrs();
    return favDoctors.isEmpty
        ? Center(
            child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Container(
                height: 300,
                width: 300,
                child: Image.asset('assets/images/icon.png')),
            SizedBox(
              height: 20,
            ),
            Text(
              'No Added Doctors',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ]))
        : ListView.builder(
            itemBuilder: (ctx, i) => DoctorListCard(
              cat: favDoctors[i].category,
              image: favDoctors[i].image,
              location: favDoctors[i].location,
              name: favDoctors[i].name,
              price: favDoctors[i].price,
              rating: favDoctors[i].rate,
              id: favDoctors[i].id,
            ),
            itemCount: favDoctors.length,
          );
  }
}
