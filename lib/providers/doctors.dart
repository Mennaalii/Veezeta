import 'package:flutter/foundation.dart';
import 'package:vezeeta/models/doctor.dart';

class Doctors with ChangeNotifier {
  List<Doctor> _doctorsList = [
    Doctor(
        id: '1',
        name: 'Dr Mohamed Ahmed',
        category: 'Dermatologist',
        location: 'Cairo',
        image: 'dr1',
        price: '600',
        rate: 4.5,
        waitingTime: '20 mins',
        reviews: [
          'Good',
          'Excellent Dr',
          'Respect'
              'Good',
          'Excellent Dr',
          'Respect'
        ],
        schedule: [
          {
            'day': 'Sunday',
            'date': '26/6',
            'startDate': 'From 1:00 PM',
            'endDate': 'To 8:00 PM'
          },
          {
            'day': 'Monday',
            'date': '27/6',
            'startDate': 'From 11:00 AM',
            'endDate': 'To 5:00 PM'
          },
          {
            'day': 'Wednesday',
            'date': '29/6',
            'startDate': 'From 1:00 PM',
            'endDate': 'To 8:00 PM'
          },
          {
            'day': 'Saturday',
            'date': '2/7',
            'startDate': 'From 11:00 AM',
            'endDate': 'To 6:00 PM'
          },
        ],
        isFav: false),
    Doctor(
        id: '2',
        name: 'Dr Ahmed Lotfy',
        category: 'Psychologist',
        location: 'Alex',
        image: 'dr2',
        price: '1000',
        rate: 4.0,
        waitingTime: '45 mins',
        reviews: ['Too much waiting time', 'Excellent Dr', 'Respect'],
        schedule: [
          {
            'day': 'Sunday',
            'date': '26/6',
            'startDate': 'From 1:00 PM',
            'endDate': 'To 8:00 PM'
          },
          {
            'day': 'Monday',
            'date': '27/6',
            'startDate': 'From 11:00 AM',
            'endDate': 'To 5:00 PM'
          },
          {
            'day': 'Wednesday',
            'date': '29/6',
            'startDate': 'From 1:00 PM',
            'endDate': 'To 8:00 PM'
          },
        ],
        isFav: false),
    Doctor(
        id: '3',
        name: 'Dr Yasser Sameh',
        category: 'Dentist',
        location: 'Benha',
        image: 'dr3',
        price: '250',
        rate: 3.0,
        waitingTime: '15 mins',
        reviews: [
          'Cheap',
          'Excellent Dr',
        ],
        schedule: [
          {
            'day': 'Sunday',
            'date': '26/6',
            'startDate': 'From 1:00 PM',
            'endDate': 'To 8:00 PM'
          },
          {
            'day': 'Monday',
            'date': '27/6',
            'startDate': 'From 11:00 AM',
            'endDate': 'To 5:00 PM'
          },
          {
            'day': 'Wednesday',
            'date': '29/6',
            'startDate': 'From 1:00 PM',
            'endDate': 'To 8:00 PM'
          },
          {
            'day': 'Friday',
            'date': '1/7',
            'startDate': 'From 10:00 AM',
            'endDate': 'To 7:00 PM'
          },
          {
            'day': 'Saturday',
            'date': '2/7',
            'startDate': 'From 11:00 AM',
            'endDate': 'To 6:00 PM'
          },
        ],
        isFav: false),
    Doctor(
        id: '4',
        name: 'Dr Alaa Adham',
        category: 'Neurologist',
        location: 'Cairo',
        image: 'dr4',
        price: '1200',
        rate: 2.5,
        waitingTime: '60 mins',
        reviews: ['Not good', 'Excellent Dr', 'Respect'],
        schedule: [
          {
            'day': 'Sunday',
            'date': '26/6',
            'startDate': 'From 1:00 PM',
            'endDate': 'To 8:00 PM'
          },
          {
            'day': 'Monday',
            'date': '27/6',
            'startDate': 'From 11:00 AM',
            'endDate': 'To 5:00 PM'
          },
        ],
        isFav: false),
  ];

  List<Doctor> getDoctors() {
    return [..._doctorsList];
  }

  List<Doctor> filterByName(String name) {
    return _doctorsList
        .where((cat) => cat.name
            .toString()
            .toLowerCase()
            .startsWith(name.toString().toLowerCase()))
        .toList();
  }

  Doctor searchByID(String id) {
    return _doctorsList.firstWhere((doctor) => doctor.id == id);
  }

  List<Doctor> getFavDrs() {
    return _doctorsList.where((doctor) => doctor.isFav == true).toList();
  }

  void toggle(
    String id,
  ) {
    int index = _doctorsList.indexWhere((doctor) => doctor.id == id);
    if (_doctorsList[index].isFav == true) {
      _doctorsList[index].isFav = false;
    } else {
      _doctorsList[index].isFav = true;
    }
    notifyListeners();
  }
}
