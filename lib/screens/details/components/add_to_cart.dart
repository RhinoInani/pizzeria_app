import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizzeria_app/constants.dart';
import 'package:pizzeria_app/screens/details/components/body.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final Body widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: kDefaultPaddin ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: widget.product.color,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/add_to_cart.svg", color: widget.product.color,),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                color: widget.product.color,
                onPressed: (){},
                child: Text("BUY NOW",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
