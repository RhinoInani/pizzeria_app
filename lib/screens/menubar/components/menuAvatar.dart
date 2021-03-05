import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizzeria_app/constants.dart';

class MenuAvatar extends StatelessWidget {
  final String name;
  MenuAvatar({
    Key key, this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: SvgPicture.asset("assets/icons/heart.svg"),
          backgroundColor: Colors.blue,
          minRadius: 40,
          maxRadius: 40,
        ),
        SizedBox(
          height: kDefaultPaddin/ 2,
        ),
        Text(
          "$name",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Divider(
          height: 20,
          color: Colors.black,
          thickness: 1,
        ),
      ],
    );
  }
}
