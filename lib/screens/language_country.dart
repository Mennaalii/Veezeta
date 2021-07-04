import 'package:flutter/material.dart';
import 'package:vezeeta/widgets/country_button.dart';
import 'package:vezeeta/widgets/language_button.dart';

class CountryAndLanguage extends StatelessWidget {
  static const routeName = 'countery_and_language';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Choose Country',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CountryButton('Saudi Arabia'),
                  CountryButton('Egypt'),
                  CountryButton('Jordan'),
                  CountryButton('Lebanon'),
                  CountryButton('Nigeria'),
                  CountryButton('Kenya'),
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                children: [
                  Text(
                    'Choose Language',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LanguageButton('Arabic'),
                  LanguageButton('English')
                ],
              ),
            ),
          ),
          RaisedButton(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 15),
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Theme.of(context).primaryColor)),
            child: Text(
              'Save',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
