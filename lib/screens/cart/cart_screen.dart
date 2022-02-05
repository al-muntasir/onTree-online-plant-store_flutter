import 'package:flutter/material.dart';
import 'package:plant_app/models/cart_model.dart';
import 'package:plant_app/screens/cart/components/checkout_card.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Your Cart"),
        Text(
          "${demoCart.length} iteams",
          style: Theme.of(context).textTheme.caption,
        )
      ],
    ),
  );
}
