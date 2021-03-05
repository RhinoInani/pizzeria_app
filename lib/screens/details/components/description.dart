import 'package:flutter/material.dart';
import 'package:pizzeria_app/constants.dart';
import 'package:pizzeria_app/screens/details/components/body.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.size,
    @required this.widget,
  }) : super(key: key);

  final Size size;
  final Body widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin
      ),
      child: Container(
        width: size.width-40,
        child: Text(
          widget.product.description,
          style: TextStyle(
            height: 1.5,
          ),
        ),
      ),
    );
  }
}