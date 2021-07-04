import 'package:flutter/material.dart';
import '../widgets/button.dart';

class EmailLogin extends StatelessWidget {
  static const routeName = 'email_login';
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Center(
          child: Card(
              color: Colors.teal,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 20,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(children: [
                            Row(children: [
                              Icon(Icons.email_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: TextField(
                                decoration:
                                    InputDecoration(hintText: 'Enter email'),
                                controller: _emailController,
                              )),
                            ]),
                            SizedBox(
                              height: 30,
                            ),
                            Row(children: [
                              Icon(Icons.remove_red_eye_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: TextField(
                                decoration:
                                    InputDecoration(hintText: 'Enter password'),
                                controller: _emailController,
                              )),
                            ]),
                          ])),
                      SizedBox(
                        height: 35,
                      ),
                      Button('Login', () {}),
                      Button('Sign up', () {})
                    ],
                  )))),
    );
  }
}
