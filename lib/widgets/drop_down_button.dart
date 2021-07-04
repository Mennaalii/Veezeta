import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: DropdownButton<String>(
        hint: Text('Choose Specialization'),
        items: <String>['A', 'B', 'C', 'D'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (_) {},
      )),
    );
  }
}
