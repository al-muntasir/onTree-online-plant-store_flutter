import 'package:flutter/cupertino.dart';
import 'package:plant_app/models/plant_model.dart';

class Cart {
  final Plant plant;
  final int numOfIteam;

  const Cart({
    @required this.plant,
    @required this.numOfIteam,
  });
}

List<Cart> demoCart = [
  Cart(plant: demoPlant[0], numOfIteam: 2),
  Cart(plant: demoPlant[1], numOfIteam: 1),
  Cart(plant: demoPlant[3], numOfIteam: 2),
];
