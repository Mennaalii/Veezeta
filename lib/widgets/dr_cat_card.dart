import 'package:flutter/material.dart';
import '../screens/doctors_list.dart';

class DrCatCard extends StatelessWidget {
  final text;
  final image;

  DrCatCard(this.text, this.image);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(DoctorsList.routeName);
        },
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 10),
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  child: Container(
                      height: 100,
                      width: 150,
                      child: Image.asset(
                        'assets/images/$image.png',
                        fit: BoxFit.cover,
                      ))),
              SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
