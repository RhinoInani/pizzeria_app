import 'package:flutter/material.dart';
import 'package:pizzeria_app/constants.dart';

class MenuBarCard extends StatelessWidget {
  final Function press;
  final String text;
  final IconData icon;
  MenuBarCard({
    Key key, this.press, this.text, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: press,
          child: SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$text",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    color: kTextColor,
                  ),
                ),
                Icon(icon, color: kTextColor,),
              ],
            ),
          ),
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
