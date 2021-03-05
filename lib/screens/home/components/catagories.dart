import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pizzeria_app/constants.dart';
import 'package:pizzeria_app/models/products.dart';

class Catagories extends StatefulWidget {
  @override
  _CatagoriesState createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  List <String> catagories = [
    "Pizzas", "Wings", "Sides", "Drinks", "Etc",
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Swiper(
          itemBuilder: (BuildContext context, int index){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:  products[index].color,
              ),
              // color:,
              child: Image.asset(
                "assets/images/pizzahand.png",
                fit: BoxFit.fill,
              ),
            );
          },
          itemCount: products.length,
          viewportFraction: 0.4,
          scale: 0.1,
          autoplay: true,
        ),
        // ListView.builder(
        //   scrollDirection: Axis.horizontal,
        //   itemCount: catagories.length,
        //   itemBuilder: (context, index) => buildCatagory(index),
        // ),
      ),
    );
  }

  Widget buildCatagory(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selected = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              catagories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selected == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin/5),
              height: 2,
              width: 30,
              color: selected == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
