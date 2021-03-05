import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizzeria_app/constants.dart';
import 'package:pizzeria_app/models/products.dart';
import 'package:pizzeria_app/screens/cart/cartScreen.dart';
import 'package:pizzeria_app/screens/home/components/body.dart';
import 'package:pizzeria_app/screens/menubar/menuBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // title: Text(
        //   "Aki's Pizzeria",
        //   style: TextStyle(color: kTextColor),
        // ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: kTextColor,
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: kTextColor,
            ),
            highlightColor: Colors.white,
            splashColor: Colors.white,
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(
                  builder: (context){
                    return CartScreen(
                      product: products[0],
                    );
                  }
                )
              );
            },
          ),
          SizedBox(
            width: kDefaultPaddin / 2,
          ),
        ],
      ),
      drawer: MenuBar(),
      body: Body(),
    );
  }
}




