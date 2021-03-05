import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id, originalPrice;
  final Color color;
  final bool discount, fav;
  Product({
    this.fav = false,
    this.discount = false,
    this.originalPrice,
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Pizza 1",
      price: 234,
      originalPrice: 345,
      discount: true,
      fav: false,
      size: 12,
      description: dummyText,
      image: "assets/images/pizzahand.png",
      color: Color(0xFF3D82AE)
  ),
  Product(
      id: 2,
      title: "Pizza 2",
      price: 234,
      originalPrice: 345,
      discount: true,
      fav: false,
      size: 8,
      description: dummyText,
      image: "assets/images/pizzahand.png",
      color: Color(0xFFD3A984)
  ),
  Product(
      id: 3,
      title: "Pizza 3",
      price: 234,
      originalPrice: 345,
      discount: false,
      fav: false,
      size: 10,
      description: dummyText,
      image: "assets/images/pizzahand.png",
      color: Color(0xFF989493)
  ),
  Product(
      id: 4,
      title: "Pizza 4",
      price: 234,
      originalPrice: 345,
      discount: false,
      fav: false,
      size: 11,
      description: dummyText,
      image: "assets/images/pizzahand.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Pizza 5",
      price: 234,
      originalPrice: 345,
      discount: false,
      fav: false,
      size: 12,
      description: dummyText,
      image: "assets/images/pizzahand.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Pizza 6",
    price: 234,
    originalPrice: 345,
    discount: true,
    fav: false,
    size: 12,
    description: dummyText,
    image: "assets/images/pizzahand.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "This is a test text, for the true details of the text can be accessed further on. But we can put all sorts"
    "of text's into this text message and it is truly limitless. ";