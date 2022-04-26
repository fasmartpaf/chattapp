import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Login Firebase.dart';
import 'SignUp.dart';

class Navigation extends StatefulWidget {
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 300,
            ),
            child: Container(
              color: Colors.white,
              child: Text(
                'Chatt App',
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 55),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            child: LoginPage()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            child: SignUp()));
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
