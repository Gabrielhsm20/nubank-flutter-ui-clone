import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_interface/pages/splash/index.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.purple[800],
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank Interface',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
      ),
      home: SplashPage(),
    );
  }
}
