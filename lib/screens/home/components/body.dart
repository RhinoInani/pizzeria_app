import 'package:flutter/material.dart';
import 'package:pizzeria_app/constants.dart';
import 'package:pizzeria_app/models/products.dart';
import 'package:pizzeria_app/screens/details/detailsScreen.dart';
import 'package:pizzeria_app/screens/home/components/catagories.dart';
import 'package:pizzeria_app/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Catagories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin-10,
                  crossAxisSpacing: kDefaultPaddin-10,
                  childAspectRatio: 0.66,
                ),
                itemBuilder: (context, index ) =>
                    ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(product: products[index],)
                      )),
                    ),
            ),
          )
        ),
      ],
    );
  }
}