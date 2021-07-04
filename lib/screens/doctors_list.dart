import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/doctors.dart';
import 'package:vezeeta/widgets/doctor_list_card.dart';

import 'package:vezeeta/widgets/search_bar.dart';

class DoctorsList extends StatefulWidget {
  static const routeName = 'doctors_list';

  @override
  _DoctorsListState createState() => _DoctorsListState();
}

class _DoctorsListState extends State<DoctorsList> {
  var doctors;
  var flag = false;
  @override
  void didChangeDependencies() {
    if (flag == false) {
      doctors = Provider.of<Doctors>(
        context,
      ).getDoctors();
      flag = true;
    }
    super.didChangeDependencies();
  }

  void filterByName(String val) {
    setState(() {
      doctors = Provider.of<Doctors>(context, listen: false).filterByName(val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: [
        SearchBar(filterByName),
        ...doctors
            .map((doc) => DoctorListCard(
                  cat: doc.category,
                  image: doc.image,
                  location: doc.location,
                  name: doc.name,
                  price: doc.price,
                  id: doc.id,
                  rating: doc.rate,
                ))
            .toList(),
      ]),
    );
  }
}
