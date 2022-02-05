import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/my_bottom_nav_bar.dart';
import 'package:plant_app/components/drawer.dart';
import 'package:plant_app/screens/cart/cart_screen.dart';
import 'package:plant_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: new Drawer(
        child: MyDrawer(),
      ),
      appBar: buildAppBar(_scaffoldKey, context),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar(mkey, BuildContext contex) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () => mkey.currentState.openDrawer(),
      ),
      actions: [
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/shopping_cart.svg",
              color: Colors.orange,
            ),
            onPressed: () {
              Navigator.push(
                contex,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            }),
      ],
    );
  }
}
