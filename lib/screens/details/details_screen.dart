import 'package:flutter/material.dart';
import 'package:plant_app/models/plant_model.dart';
import 'package:plant_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Plant plant;

  DetailsScreen({
    Key key,
    @required this.plant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        plant: plant,
      ),
    );
  }
}
