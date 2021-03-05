import 'package:flutter/material.dart';
import 'package:pizzeria_app/constants.dart';

class loginHeading extends StatelessWidget {
  const loginHeading({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.04),
      child: Column(
        children: [
          Text(
            "Welcome Back",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size.height * 0.04,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          Text(
              "Sign in with your email and password \nor create a new account",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size.height * 0.02,
              color: kTextLightColor,
            ),
          ),
        ],
      ),
    );
  }
}
