import 'package:flutter/material.dart';
import 'package:nubank_interface/pages/home/index.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  Future<void> delay() async {
    return await Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(pageBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return HomePage();
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Center(
        child: Image.asset(
          'assets/images/nubank-logo.png',
          height: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
