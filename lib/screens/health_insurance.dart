import 'package:flutter/material.dart';

class HealthInsurance extends StatelessWidget {
  static const routeName = 'health_insurance';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Health Insurance',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 30,
        ),
        Image.asset('assets/images/insurance.png'),
        SizedBox(
          height: 70,
        ),
        GestureDetector(
            onTap: () {},
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    'Add your Health Insurance',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                )))
      ]),
    );
  }
}
