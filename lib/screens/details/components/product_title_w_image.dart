import 'package:flutter/material.dart';
import 'package:pizzeria_app/models/products.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pizza",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
            style: TextStyle(
              fontSize: size.height * 0.05,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Price\n",
                        ),
                        TextSpan(
                            text: "\$${product.price}\n",
                            style: TextStyle(
                              fontSize: size.height * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                        ),
                        TextSpan(
                            text: product.discount == true ? "\$${product.originalPrice}" :"",
                            style: TextStyle(
                              fontSize: size.height * 0.03,
                              color: Colors.white,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.red[400],
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                      ]
                  ),
                ),
              ),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}