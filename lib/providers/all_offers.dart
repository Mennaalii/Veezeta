import 'package:flutter/cupertino.dart';
import 'package:vezeeta/models/all_offer.dart';

class AllOffers with ChangeNotifier {
  final List<AllOffer> _offerList = [
    AllOffer(
        id: '1',
        image: 'vitamen',
        place: 'Shams Medical Center',
        price: '202',
        rate: 4.0,
        title: 'Vitamen D',
        reservations: '34',
        reviews: [
          'Good',
          'Excellent',
          'Respect'
              'Good',
          'Excellent',
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
        views: '123',
        isFav: false),
    AllOffer(
        id: '2',
        image: 'eye',
        place: 'Nour Hospital',
        price: '800',
        rate: 4.5,
        title: 'LASIK eye surgery',
        reservations: '56',
        reviews: ['Too much waiting time', 'Excellent', 'Respect'],
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
        views: '205',
        isFav: false),
    AllOffer(
        id: '3',
        image: 'hair',
        place: 'Dr Mohamed Ayman',
        price: '450',
        rate: 3.5,
        title: 'Hair plasma',
        reservations: '15',
        reviews: [
          'Cheap',
          'Excellent',
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
        views: '55',
        isFav: false),
  ];

  List<AllOffer> getOffers() {
    return [..._offerList];
  }

  List<AllOffer> filterByName(String name) {
    return _offerList
        .where((offer) => offer.title
            .toString()
            .toLowerCase()
            .startsWith(name.toString().toLowerCase()))
        .toList();
  }

  AllOffer searchByID(String id) {
    return _offerList.firstWhere((offer) => offer.id == id);
  }

  List<AllOffer> getFavOffers() {
    return _offerList.where((offer) => offer.isFav == true).toList();
  }

  void toggle(
    String id,
  ) {
    int index = _offerList.indexWhere((offer) => offer.id == id);
    if (_offerList[index].isFav == true) {
      _offerList[index].isFav = false;
    } else {
      _offerList[index].isFav = true;
    }

    notifyListeners();
  }
}
