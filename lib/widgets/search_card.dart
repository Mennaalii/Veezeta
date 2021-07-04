import 'package:flutter/material.dart';
import '../screens/doctor_details.dart';

class SearchCard extends StatelessWidget {
  final image;
  final name;
  final cat;

  SearchCard({this.cat, this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(DoctorDetails.routeName);
        },
        child: Card(
          color: Theme.of(context).accentColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                    child: Image.asset(
                      'assets/images/$image.png',
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                cat,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ));
  }
}
