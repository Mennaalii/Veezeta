import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vezeeta/screens/emailLogin.dart';
import 'package:vezeeta/screens/phoneLogin.dart';
import 'package:vezeeta/screens/tabs.dart';
import 'package:vezeeta/widgets/longButton.dart';
import 'package:community_material_icon/community_material_icon.dart';

class Login extends StatelessWidget {
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  'Vezeeta',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(children: [
                    Text(
                      '(+20)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Container(
                            child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter phone number',
                        border: InputBorder.none,
                      ),
                    )))
                  ])),
              SizedBox(
                height: 10,
              ),
              LongButton(
                  text: Text(
                    'Continue with phone number',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  icon: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  function: () {
                    Navigator.of(context).pushNamed(PhoneLogin.routeName);
                  }),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  'OR',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              LongButton(
                  text: Text('Facebook',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.blue.shade900,
                  ),
                  function: () {
                    Navigator.of(context).pushNamed(TabsScreen.routeName);
                  }),
              SizedBox(
                height: 10,
              ),
              LongButton(
                  text: Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  icon: Icon(
                    CommunityMaterialIcons.email,
                  ),
                  function: () {
                    Navigator.of(context).pushNamed(EmailLogin.routeName);
                  }),
              SizedBox(
                height: 10,
              ),
              LongButton(
                  text: Text('Google account',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  icon: Icon(
                    CommunityMaterialIcons.google,
                    color: Colors.red,
                  ),
                  function: () {}),
              SizedBox(
                height: 10,
              ),
              LongButton(
                  text: Text(
                    'Apple account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  icon: Icon(CommunityMaterialIcons.apple),
                  function: () {}),
            ],
          )),
    );
  }
}
