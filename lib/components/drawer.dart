import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new UserAccountsDrawerHeader(
          accountName: new Text("Pratap Kumar"),
          accountEmail: new Text("kprathap23@gmail.com"),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new ExactAssetImage('assets/images/image_1.png'),
              fit: BoxFit.cover,
            ),
          ),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/men/46.jpg")),
        ),
        new ListTile(
            leading: Icon(Icons.shopping_cart),
            title: new Text("Your Cart"),
            onTap: () {}),
        new ListTile(
            leading: Icon(Icons.apps), title: new Text("Plants"), onTap: () {}),
        new ListTile(
            leading: Icon(Icons.settings),
            title: new Text("Settings"),
            onTap: () {}),
        new Divider(),
        new ListTile(
            leading: Icon(Icons.info),
            title: new Text("About"),
            onTap: () {
              ;
            }),
        new ListTile(
            leading: Icon(
              Icons.power_settings_new,
              color: Colors.red,
            ),
            title: new Text("Logout"),
            onTap: () {
              Navigator.pop(context);
            }),
        new ListTile(
            leading: Icon(Icons.arrow_back, color: Colors.purpleAccent),
            title: new Text(
              "Close",
              style: TextStyle(
                fontSize: 16,
                color: Colors.purple,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            }),
      ],
    );
  }
}
