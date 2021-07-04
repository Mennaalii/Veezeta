import 'package:flutter/material.dart';
import 'package:vezeeta/screens/doctor_details.dart';

import '../widgets/stars.dart';

class DoctorListCard extends StatelessWidget {
  final image;
  final name;
  final cat;
  final price;
  final location;
  final rating;
  final id;

  DoctorListCard(
      {this.cat,
      this.image,
      this.location,
      this.name,
      this.price,
      this.id,
      this.rating});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => DoctorDetails(id: id)));
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        child: Column(children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      height: 120,
                      width: 150,
                      child: Image.asset(
                        'assets/images/$image.png',
                        fit: BoxFit.cover,
                      ))),
              SizedBox(
                width: 20,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(cat,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                SizedBox(
                  height: 10,
                ),
                Stars(rating)
              ]),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.local_hospital,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      cat,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.money,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Price : $price LE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Location : $location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                    elevation: 0,
                    padding: EdgeInsets.all(15),
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text('Reserve'))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
