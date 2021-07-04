import 'package:flutter/material.dart';
import 'package:vezeeta/screens/medicine_list.dart';

class PharmacyCategory extends StatelessWidget {
  final text;
  final image;
  PharmacyCategory(this.text, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(MedicineList.routeName);
      },
      child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                  height: 80,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/$image.png',
                        fit: BoxFit.cover,
                      ))),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )
            ],
          )),
    );
  }
}
