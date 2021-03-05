import 'package:flutter/material.dart';
import 'package:pizzeria_app/constants.dart';

class loginOrCreateButton extends StatelessWidget {
  const loginOrCreateButton({
    Key key,
    @required this.size,
    @required this.loginOrCreate,
    @required this.press,
    @required this.text1,
    @required this.text2,
  }) : super(key: key);
  final Function press;
  final String text1;
  final String text2;
  final Size size;
  final bool loginOrCreate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          // color: Colors.lightBlue[400],
          border: Border.all(
            color: Colors.black,
            width: 0.7,
          ),
        ),
        width: size.width,
        height: size.height * 0.09,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              loginOrCreate == false ? "$text1" : "$text2",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.height * 0.025,
                color: kTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
