import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizzeria_app/constants.dart';
import 'package:pizzeria_app/models/products.dart';
import 'package:pizzeria_app/screens/details/detailsScreen.dart';

class CartScreen extends StatelessWidget {
  final Product product;

  const CartScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: kTextColor,
          ),
          highlightColor: Colors.white,
          splashColor: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: IconThemeData(
          color: kTextColor,
        ),
        title: Text(
          "Shopping Cart",
          style: TextStyle(
            color: kTextColor,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.02,
          horizontal: size.width * 0.05,
        ),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context){
                      return DetailsScreen(
                        product: products[0],
                      );
                    }
                )
            );
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.02, vertical: size.height * 0.02),
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Hero(
                        tag: "${product.id+products.length}",
                        child: Image.asset(
                          "${product.image}",
                          fit: BoxFit.fill,
                          height: size.height * 0.15,
                          // scale: size.height * 0.0015,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${product.title}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: size.height * 0.035
                            ),
                          ),
                          Text(
                            "\$${product.price}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.height * 0.025,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            product.discount
                                ? "\$${product.originalPrice}"
                                : "",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 2,
                              decorationColor: Colors.red[400],
                            ),
                          ),
                          Text(
                            "Quantity: 1",
                            style: TextStyle(
                              fontSize: size.height * 0.02,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
