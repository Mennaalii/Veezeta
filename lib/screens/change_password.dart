import 'package:flutter/material.dart';
import '../widgets/text_field_card.dart';

class ChangePassword extends StatelessWidget {
  static const routeName = 'change_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(
          'Change Password',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFieldCard(
                            hint: 'Enter your old password',
                            icon: Icons.remove_red_eye,
                          ),
                          TextFieldCard(
                            hint: 'Enter your new password',
                            icon: Icons.remove_red_eye,
                          ),
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
