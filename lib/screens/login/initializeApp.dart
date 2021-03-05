import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzeria_app/screens/home/homeScreen.dart';
import 'package:pizzeria_app/screens/login/loginScreen.dart';
import 'package:pizzeria_app/screens/login/main/body.dart';

class initializeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initializaiton = Firebase.initializeApp();
    return FutureBuilder(
        future: _initializaiton,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text("error: ${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot1) {
                if (snapshot1.hasError) {
                  return Scaffold(
                    body: Center(
                      child: Text("login error: ${snapshot1.error}"),
                    ),
                  );
                }
                if (snapshot1.connectionState == ConnectionState.active) {
                  User _user = snapshot1.data;
                  if (_user == null) {
                    return LoginBody(loginOrCreate: false,);
                  } else {
                    return HomeScreen();
                  }
                }
                return Scaffold(
                  body: Center(
                    child: Text("Checking Authentication..."),
                  ),
                );
              },
            );
            //   Scaffold(
            //   body: Center(
            //     child: Text("Firebase App Initialized"),
            //   ),
            // );
          }
          return Scaffold(
            body: Center(
              child: Text("Initializing App"),
            ),
          );
        });
  }
}
