import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset("assets/images/plant_animated.gif"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: new TextSpan(
                  text: 'on',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black54),
                  children: <TextSpan>[
                    new TextSpan(
                        text: 'TREE\n',
                        style: TextStyle(
                            color: Colors.green, fontStyle: FontStyle.italic)),
                    new TextSpan(text: 'Online Plant Shop'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
