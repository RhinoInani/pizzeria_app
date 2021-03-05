import 'package:flutter/material.dart';
import 'package:pizzeria_app/constants.dart';
import 'package:pizzeria_app/screens/menubar/components/menuAvatar.dart';
import 'package:pizzeria_app/screens/menubar/components/menuBarCard.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Drawer(
        elevation: 25,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPaddin,
              vertical: MediaQuery.of(context).size.height * 0.1,
            ),
            child: Column(
              children: [
                MenuAvatar(name: "Rohin Inani",),
                MenuBarCard(
                  text: "Account",
                  icon: Icons.person,
                  press: (){
                    print("account");
                  },
                ),
                MenuBarCard(
                  text: "Menu",
                  icon: Icons.ballot_outlined,
                  press: (){
                    print("menu");
                  },
                ),
                MenuBarCard(
                  text: "Deals",
                  icon: Icons.workspaces_filled,
                  press: (){
                    print("Deals");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
