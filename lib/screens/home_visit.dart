import 'package:flutter/material.dart';
import 'package:vezeeta/screens/thanks.dart';
import '../widgets/text_field_card.dart';

class HomeVisit extends StatelessWidget {
  static const routeName = 'home_visit';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 30),
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Theme.of(context).primaryColor,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFieldCard(
                                hint: 'Enter your name',
                                icon: Icons.perm_identity),
                            TextFieldCard(
                              hint: 'Enter your phone number',
                              icon: Icons.call,
                            ),
                            Card(
                              color: Theme.of(context).primaryColor,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [
                                        Icon(Icons.medical_services),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Choose Specialization',
                                        ),
                                      ]),
                                      Icon(Icons.arrow_drop_down)
                                    ],
                                  )),
                            ),
                            Card(
                              color: Theme.of(context).primaryColor,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [
                                        Icon(Icons.place),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Choose Region',
                                        ),
                                      ]),
                                      Icon(Icons.arrow_drop_down)
                                    ],
                                  )),
                            ),
                          ])))),
          RaisedButton(
            elevation: 10,
            color: Theme.of(context).primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.of(context).pushNamed(Thanks.routeName);
            },
            child: Text('Confirm'),
            padding: EdgeInsets.all(20),
          )
        ],
      ),
    );
  }
}
