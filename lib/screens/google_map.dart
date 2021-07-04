import 'package:flutter/material.dart';

class GoogleMap extends StatelessWidget {
  static const routeName = 'google_map';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Add your location',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: Center(
          child: Text(
        'Google Map',
        style: TextStyle(fontSize: 30),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          width: double.infinity,
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            child: Text(
              'Next',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
