import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vezeeta/screens/Edit_Info.dart';
import 'package:vezeeta/screens/change_password.dart';
import 'package:vezeeta/screens/health_insurance.dart';
import 'package:vezeeta/screens/language_country.dart';
import 'package:vezeeta/widgets/home_button.dart';
import './mydrawer.dart';
import '../screens/choose_doctor.dart';

class Settings extends StatelessWidget {
  static const routeName = 'settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  HomeButton(
                      'Edit My Data',
                      Icon(
                        Icons.info,
                        color: Colors.red,
                      ), () {
                    Navigator.of(context).pushNamed(EditInfo.routeName);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  HomeButton(
                      'My Health Insurance',
                      Icon(
                        Icons.medical_services,
                        color: Colors.green,
                      ), () {
                    Navigator.of(context).pushNamed(HealthInsurance.routeName);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  HomeButton(
                      'Choose country and language',
                      Icon(
                        Icons.language,
                        color: Colors.black87,
                      ), () {
                    Navigator.of(context)
                        .pushNamed(CountryAndLanguage.routeName);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  HomeButton(
                      'Change password',
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.blue,
                      ), () {
                    Navigator.of(context).pushNamed(ChangePassword.routeName);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  HomeButton(
                      'How Vezeeta works',
                      Icon(
                        Icons.work,
                        color: Colors.redAccent,
                      ), () {
                    Navigator.of(context).pushNamed(ChooseDoctor.routeName);
                  }),
                ],
              ))
        ],
      ),
    );
  }
}
