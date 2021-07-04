import 'package:flutter/cupertino.dart';
import 'package:vezeeta/models/med_category.dart';

class MedCategories with ChangeNotifier {
  final List<MedCategory> _medCatList = [
    MedCategory(name: 'Vitamens', id: '1', image: 'vitamens'),
    MedCategory(name: 'Self Care', id: '2', image: 'self'),
    MedCategory(name: 'Health', id: '3', image: 'health'),
    MedCategory(name: 'First Aid', id: '4', image: 'first'),
    MedCategory(name: 'Hair Care', id: '5', image: 'haircare'),
    MedCategory(name: 'Skin Care', id: '6', image: 'skin')
  ];
  List<MedCategory> getCat() {
    return [..._medCatList];
  }

  List<MedCategory> filterByName(String name) {
    return _medCatList
        .where((cat) => cat.name
            .toString()
            .toLowerCase()
            .startsWith(name.toString().toLowerCase()))
        .toList();
  }
}
