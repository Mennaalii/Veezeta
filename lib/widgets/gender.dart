import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  int? _selectedButton = 0;
  @override
  void initState() {
    super.initState();
  }

  void change(int val) {
    setState(() {
      _selectedButton = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Radio(
        value: 1,
        groupValue: _selectedButton,
        onChanged: (int? val) {
          setState(() {
            _selectedButton = val;
          });
        },
        activeColor: Colors.teal.shade900,
      ),
      Text('Male'),
      SizedBox(
        width: 10,
      ),
      Radio(
        value: 2,
        groupValue: _selectedButton,
        onChanged: (int? val) {
          setState(() {
            _selectedButton = val;
          });
        },
        activeColor: Colors.teal.shade900,
      ),
      Text('Female')
    ]);
  }
}
