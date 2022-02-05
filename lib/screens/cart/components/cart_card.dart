import 'package:flutter/material.dart';
import 'package:plant_app/models/cart_model.dart';

class CardCard extends StatelessWidget {
  const CardCard({Key key, @required this.cart}) : super(key: key);

  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 88,
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(cart.plant.imgUrl),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.plant.name,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  maxLines: 2,
                ),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    text: "\$${cart.plant.price}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.orangeAccent),
                    children: [
                      TextSpan(
                          text: " x${cart.numOfIteam}",
                          style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
