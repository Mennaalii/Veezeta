import 'package:flutter/cupertino.dart';
import 'package:vezeeta/models/dr_category.dart';

class DrCategories with ChangeNotifier {
  final List<DrCategory> _drCatList = [
    DrCategory(id: '1', image: 'Dermatologist', name: 'Dermatologists'),
    DrCategory(id: '2', image: 'Dentist', name: 'Dentists'),
    DrCategory(id: '3', image: 'neurologists', name: 'Neurologists'),
    DrCategory(id: '4', image: 'othopedist', name: 'Othopedists'),
    DrCategory(id: '5', image: 'psychologist', name: 'Psychologists')
  ];

  List<DrCategory> getCat() {
    return [..._drCatList];
  }

  List<DrCategory> filterByName(String name) {
    return _drCatList
        .where((dr) => dr.name
            .toString()
            .toLowerCase()
            .startsWith(name.toString().toLowerCase()))
        .toList();
  }
}
