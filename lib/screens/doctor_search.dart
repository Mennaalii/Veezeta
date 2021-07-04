import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/doctors.dart';
import 'package:vezeeta/widgets/doctor_list_card.dart';
import 'package:vezeeta/widgets/search_bar.dart';

class DoctorSearch extends StatefulWidget {
  static const routeName = 'doctor_search';
  @override
  _DoctorSearchState createState() => _DoctorSearchState();
}

class _DoctorSearchState extends State<DoctorSearch> {
  var doctors = [];
  var body = [];

  void filterByName(String name) {
    setState(() {
      doctors = Provider.of<Doctors>(context, listen: false).filterByName(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          elevation: 0,
        ),
        body: ListView(
          children: [
            Column(children: [
              SearchBar(filterByName),
              if (doctors.isEmpty) ...[
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 400,
                  child: Image.asset('assets/images/icon.png'),
                )
              ],
              if (doctors.isNotEmpty)
                ...doctors
                    .map((dr) => DoctorListCard(
                          id: dr.id,
                          cat: dr.category,
                          image: dr.image,
                          location: dr.location,
                          name: dr.name,
                          price: dr.price,
                          rating: dr.rate,
                        ))
                    .toList()
            ])
          ],
        ));
  }
}
