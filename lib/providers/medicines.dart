import 'package:flutter/cupertino.dart';
import 'package:vezeeta/models/medicine.dart';

class Medicines with ChangeNotifier {
  final List<Medicine> _medicinesList = [
    Medicine(
        id: '1',
        name: 'Effortil',
        image: 'effortil',
        category: '1',
        price: '24',
        type: 'Bottle'),
    Medicine(
        id: '2',
        name: 'Ketofan',
        image: 'ketofan',
        category: '1',
        price: '14',
        type: 'Box'),
    Medicine(
        id: '3',
        name: 'Paracetamol',
        image: 'paracetamol',
        category: '1',
        price: '30',
        type: 'Box'),
    Medicine(
        id: '4',
        name: 'Spasmo',
        image: 'spasmo',
        category: '1',
        price: '9',
        type: 'Box')
  ];

  List<Medicine> getMediciness() {
    return [..._medicinesList];
  }

  List<Medicine> filterByName(String name) {
    return _medicinesList
        .where((med) => med.name
            .toString()
            .toLowerCase()
            .startsWith(name.toString().toLowerCase()))
        .toList();
  }
}
