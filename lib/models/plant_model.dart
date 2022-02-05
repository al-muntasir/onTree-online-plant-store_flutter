import 'package:flutter/material.dart';

class Plant {
  final String name, imgUrl, countryName;
  final int price;
  final bool isRecomanded, isFeatured;

  Plant({
    @required this.name,
    @required this.imgUrl,
    @required this.countryName,
    @required this.price,
    this.isRecomanded,
    this.isFeatured,
  });
}

List<Plant> demoPlant = [
  Plant(
    name: "Cyclamen",
    imgUrl: "assets/images/cyclamen_1.jpg",
    countryName: "France",
    price: 500,
    isRecomanded: true,
    isFeatured: false,
  ),
  Plant(
    name: "Kolaboti",
    imgUrl: "assets/images/kolaboti_2.jpg",
    countryName: "Russia",
    price: 780,
    isRecomanded: true,
    isFeatured: false,
  ),
  Plant(
    name: "Lily Flower",
    imgUrl: "assets/images/lily_3.jpg",
    countryName: "USA",
    price: 810,
    isRecomanded: true,
    isFeatured: false,
  ),
  Plant(
    name: "Adoneum",
    imgUrl: "assets/images/adoneum_b_1.jpg",
    countryName: "Europe",
    price: 680,
    isRecomanded: false,
    isFeatured: true,
  ),
  Plant(
    name: "Gerbera",
    imgUrl: "assets/images/gerbera_b_2.jpg",
    countryName: "India",
    price: 777,
    isRecomanded: false,
    isFeatured: true,
  ),
  Plant(
    name: "Pink Rose",
    imgUrl: "assets/images/pink-rose-plant_b_3.jpg",
    countryName: "India",
    price: 888,
    isRecomanded: true,
    isFeatured: false,
  ),
];
