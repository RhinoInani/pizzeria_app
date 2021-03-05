import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzeria_app/constants.dart';
import 'package:pizzeria_app/models/products.dart';
import 'package:pizzeria_app/screens/details/components/add_to_cart.dart';
import 'package:pizzeria_app/screens/details/components/cart_counter.dart';
import 'package:pizzeria_app/screens/details/components/description.dart';
import 'package:pizzeria_app/screens/details/components/product_title_w_image.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  IconData favorite = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  width: size.width,
                  height: size.height,
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.height * 0.025),
                              ),
                              SizedBox(
                                height: size.height*0.01,
                              ),
                              ToggleSwitch(
                                  cornerRadius: 30,
                                  fontSize: size.height * 0.015,
                                  minHeight: size.height * 0.04,
                                  activeBgColor: widget.product.color,
                                  inactiveBgColor: Colors.grey[200],
                                  labels: ['S', 'M', 'L'],
                                  changeOnTap: true,
                                onToggle: (index){
                                    print('switched to: $index');
                                },
                              ),
                              // Row(
                              //   children: [
                              //     IconButton(
                              //       onPressed: () {
                              //         setState(() {
                              //           if (isSelected == false) {
                              //             isSelected = true;
                              //             isSelectedM = false;
                              //             isSelectedL = false;
                              //           } else {
                              //             isSelected = false;
                              //           }
                              //           ;
                              //           // isSelected = true ? isSelected = false : false;
                              //           // isSelected = false ? isSelected = true: true;
                              //         });
                              //       },
                              //       enableFeedback: true,
                              //       icon: Container(
                              //         margin: EdgeInsets.only(
                              //           top: kDefaultPaddin / 4,
                              //           right: kDefaultPaddin / 2,
                              //         ),
                              //         height: 24,
                              //         width: 24,
                              //         decoration: BoxDecoration(
                              //           shape: BoxShape.circle,
                              //           border: Border.all(
                              //             color: isSelected
                              //                 ? widget.product.color
                              //                 : Colors.grey[400],
                              //           ),
                              //         ),
                              //         child: Center(
                              //           child: Text(
                              //             "S",
                              //             textAlign: TextAlign.center,
                              //             style: TextStyle(
                              //               color: isSelected
                              //                   ? widget.product.color
                              //                   : Colors.grey[400],
                              //               fontSize: 15,
                              //               fontWeight: FontWeight.bold,
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //     IconButton(
                              //       onPressed: () {
                              //         setState(() {
                              //           if (isSelectedM == false) {
                              //             isSelectedM = true;
                              //             isSelected = false;
                              //             isSelectedL = false;
                              //           } else {
                              //             isSelectedM = false;
                              //           }
                              //           ;
                              //           // isSelected = true ? isSelected = false : false;
                              //           // isSelected = false ? isSelected = true: true;
                              //         });
                              //       },
                              //       enableFeedback: true,
                              //       icon: Container(
                              //         margin: EdgeInsets.only(
                              //           top: kDefaultPaddin / 4,
                              //           right: kDefaultPaddin / 2,
                              //         ),
                              //         height: 24,
                              //         width: 24,
                              //         decoration: BoxDecoration(
                              //           shape: BoxShape.circle,
                              //           border: Border.all(
                              //             color: isSelectedM
                              //                 ? widget.product.color
                              //                 : Colors.grey[400],
                              //           ),
                              //         ),
                              //         child: Center(
                              //           child: Text(
                              //             "M",
                              //             textAlign: TextAlign.center,
                              //             style: TextStyle(
                              //               color: isSelectedM
                              //                   ? widget.product.color
                              //                   : Colors.grey[400],
                              //               fontSize: 15,
                              //               fontWeight: FontWeight.bold,
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //     IconButton(
                              //       onPressed: () {
                              //         setState(() {
                              //           if (isSelectedL == false) {
                              //             isSelectedL = true;
                              //             isSelectedM = false;
                              //             isSelected = false;
                              //           } else {
                              //             isSelectedL = false;
                              //           }
                              //           ;
                              //         });
                              //       },
                              //       enableFeedback: true,
                              //       icon: Container(
                              //         margin: EdgeInsets.only(
                              //           top: kDefaultPaddin / 4,
                              //           right: kDefaultPaddin / 2,
                              //         ),
                              //         height: 24,
                              //         width: 24,
                              //         decoration: BoxDecoration(
                              //           shape: BoxShape.circle,
                              //           border: Border.all(
                              //             color: isSelectedL
                              //                 ? widget.product.color
                              //                 : Colors.grey[400],
                              //           ),
                              //         ),
                              //         child: Center(
                              //           child: Text(
                              //             "L",
                              //             textAlign: TextAlign.center,
                              //             style: TextStyle(
                              //               color: isSelectedL
                              //                   ? widget.product.color
                              //                   : Colors.grey[400],
                              //               fontSize: 15,
                              //               fontWeight: FontWeight.bold,
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              //this is the three size option buttons, can't be extracted because uses stateful widget
                              //DO NOT MOVE anything out of the row above
                              Description(size: size, widget: widget),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CartCounter(),
                          IconButton(
                            icon: Icon(favorite),
                            color: Colors.red,
                            onPressed: () {
                              setState(() {
                                if (favorite == Icons.favorite_border) {
                                  favorite = Icons.favorite;
                                } else {
                                  favorite = Icons.favorite_border;
                                }
                              });
                            },
                          ),
                        ],
                      ), //Counter and favorite button
                      AddToCart(
                        widget: widget,
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: widget.product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
