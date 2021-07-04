import 'package:flutter/foundation.dart';
import 'package:vezeeta/models/offer.dart';

class Offers with ChangeNotifier {
  List<Offer> _myOffersList = [];
  List<Offer> getMyOffer() {
    return [..._myOffersList];
  }

  void addOffers(
      {String? title,
      String? place,
      String? theDay,
      String? theDate,
      String? image}) {
    _myOffersList.add(Offer(
        image: image,
        place: place,
        theDate: theDate,
        theDay: theDay,
        title: title));
    notifyListeners();
  }
}
