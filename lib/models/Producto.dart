// ignore: file_names
import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Silla Guanaca 1",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/Chair-PNG-Clipart.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Silla Guanaca 2",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/Grupo 1.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Silla Guanaca 3",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/Grupo 2.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Silla Guanaca 4",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/Grupo 3.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/Grupo 4.png",
      color: Color(0xFFFB7883)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
