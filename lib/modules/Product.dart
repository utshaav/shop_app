import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    this.id,
    this.color,
    this.description,
    this.image,
    this.price,
    this.size,
    this.title,
  });
}

List<Product> product = [
  Product(
    id: 1,
    title: "Product 1",
    price: 25,
    size: 12,
    color: Colors.red,
    description: kDummyText,
    image: "assets/images/bag1.png",
  ),
  Product(
    id: 2,
    title: "Product 2",
    price: 25,
    size: 12,
    color: Colors.blue,
    description: kDummyText,
    image: "assets/images/bag2.png",
  ),
  Product(
    id: 3,
    title: "Product 3",
    price: 25,
    size: 12,
    color: Colors.orange,
    description: kDummyText,
    image: "assets/images/bag1.jpg",
  ),
  Product(
    id: 4,
    title: "Product 4",
    price: 25,
    size: 12,
    color: Colors.greenAccent,
    description: kDummyText,
    image: "assets/images/bag1.jpg",
  ),
  Product(
    id: 5,
    title: "Product 5",
    price: 25,
    size: 12,
    color: Colors.red,
    description: kDummyText,
    image: "assets/images/bag1.jpg",
  ),
  Product(
    id: 6,
    title: "Product 6",
    price: 25,
    size: 12,
    color: Colors.red,
    description: kDummyText,
    image: "assets/images/bag1.jpg",
  ),
];
