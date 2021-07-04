import 'package:flutter/material.dart';

import 'package:vezeeta/widgets/gender.dart';
import 'package:vezeeta/widgets/text_field_card.dart';

class EditInfo extends StatelessWidget {
  static const routeName = 'edit_my_info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(
          'Edit Your Info',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFieldCard(
                            hint: 'Enter your Full Name',
                            icon: Icons.perm_identity,
                          ),
                          TextFieldCard(
                            hint: 'Enter your Phone Number',
                            icon: Icons.phone,
                          ),
                          TextFieldCard(
                            hint: 'Enter your Email',
                            icon: Icons.email,
                          ),
                          TextFieldCard(
                            hint: 'Enter your Birth Date',
                            icon: Icons.date_range,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.child_care),
                                    SizedBox(width: 10),
                                    Text('Gender')
                                  ],
                                ),
                              ),
                              Gender()
                            ],
                          )
                        ],
                      )))),
          RaisedButton(
            elevation: 10,
            color: Theme.of(context).primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            child: Text('Save'),
            padding: EdgeInsets.all(20),
          )
        ],
      ),
    );
  }
}
