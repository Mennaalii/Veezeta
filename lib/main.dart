import 'package:flutter/material.dart';
import 'package:vezeeta/providers/bookings.dart';
import './providers/cart.dart';

import 'package:vezeeta/providers/dr_categories.dart';
import 'package:vezeeta/providers/doctors.dart';

import 'package:vezeeta/providers/med_categories.dart';
import 'package:vezeeta/providers/medicines.dart';
import 'package:vezeeta/providers/all_offers.dart';
import 'package:vezeeta/providers/offers.dart';
import 'package:vezeeta/screens/Edit_Info.dart';
import 'package:vezeeta/screens/appointments.dart';
import 'package:vezeeta/screens/call_us.dart';
import 'package:vezeeta/screens/change_password.dart';
import 'package:vezeeta/screens/choose_doctor.dart';
import 'package:vezeeta/screens/doctor_details.dart';
import 'package:vezeeta/screens/doctor_search.dart';
import 'package:vezeeta/screens/doctors_categories.dart';
import 'package:vezeeta/screens/doctors_list.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/screens/emailLogin.dart';
import 'package:vezeeta/screens/favourite.dart';
import 'package:vezeeta/screens/follow_up.dart';
import 'package:vezeeta/screens/google_map.dart';
import 'package:vezeeta/screens/health_insurance.dart';
import 'package:vezeeta/screens/home_visit.dart';
import 'package:vezeeta/screens/language_country.dart';
import 'package:vezeeta/screens/medicine_cart.dart';
import 'package:vezeeta/screens/search.dart';
import 'package:vezeeta/screens/login.dart';
import 'package:vezeeta/screens/medicine_list.dart';
import 'package:vezeeta/screens/offer_details.dart';
import 'package:vezeeta/screens/offers_list.dart';
import 'package:vezeeta/screens/pharmacy.dart';
import 'package:vezeeta/screens/phoneLogin.dart';
import 'package:vezeeta/screens/settings.dart';
import 'package:vezeeta/screens/tabs.dart';

import 'package:vezeeta/screens/thanks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Doctors()),
        ChangeNotifierProvider(create: (context) => DrCategories()),
        ChangeNotifierProvider(create: (context) => AllOffers()),
        ChangeNotifierProvider(create: (context) => MedCategories()),
        ChangeNotifierProvider(create: (context) => Medicines()),
        ChangeNotifierProvider(create: (context) => Bookings()),
        ChangeNotifierProvider(create: (context) => Offers()),
        ChangeNotifierProvider(create: (context) => Cart()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vezeeta',
        theme: ThemeData(
            primarySwatch: Colors.teal,
            accentColor: Colors.white.withOpacity(0.9)),
        home: Login(),
        routes: {
          EmailLogin.routeName: (ctx) => EmailLogin(),
          PhoneLogin.routeName: (ctx) => PhoneLogin(),
          TabsScreen.routeName: (ctx) => TabsScreen(),
          Appointment.routeName: (ctx) => Appointment(),
          Favourite.routeName: (ctx) => Favourite(),
          Search.routeName: (ctx) => Search(),
          Login.routeName: (ctx) => Login(),
          MedicineList.routeName: (ctx) => MedicineList(),
          OfferDetails.routeName: (ctx) => OfferDetails(),
          OffersList.routeName: (ctx) => OffersList(),
          Pharmacy.routeName: (ctx) => Pharmacy(),
          Settings.routeName: (ctx) => Settings(),
          CallUs.routeName: (ctx) => CallUs(),
          ChooseDoctor.routeName: (ctx) => ChooseDoctor(),
          DoctorsCategories.routeName: (ctx) => DoctorsCategories(),
          DoctorSearch.routeName: (ctx) => DoctorSearch(),
          DoctorsList.routeName: (ctx) => DoctorsList(),
          DoctorDetails.routeName: (ctx) => DoctorDetails(),
          FollowUp.routeName: (ctx) => FollowUp(),
          EditInfo.routeName: (ctx) => EditInfo(),
          HealthInsurance.routeName: (ctx) => HealthInsurance(),
          CountryAndLanguage.routeName: (ctx) => CountryAndLanguage(),
          ChangePassword.routeName: (ctx) => ChangePassword(),
          HomeVisit.routeName: (ctx) => HomeVisit(),
          Thanks.routeName: (ctx) => Thanks(),
          MedicineCart.routeName: (ctx) => MedicineCart(),
          GoogleMap.routeName: (ctx) => GoogleMap()
        },
      ),
    );
  }
}
