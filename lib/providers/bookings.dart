import 'package:flutter/cupertino.dart';
import 'package:vezeeta/models/booking.dart';

class Bookings with ChangeNotifier {
  List<Booking> _bookingList = [];

  List<Booking> getBookings() {
    return [..._bookingList];
  }

  void addBooking(
      {@required String? drName,
      @required String? drCat,
      @required String? theDate,
      @required String? image,
      @required String? theDay}) {
    _bookingList.add(Booking(
        drCat: drCat,
        drName: drName,
        theDate: theDate,
        image: image,
        theDay: theDay));

    notifyListeners();
  }
}
