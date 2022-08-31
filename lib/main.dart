import 'package:flutter/material.dart';
import 'package:flutter_messengerpro/pages/home_page.dart';
import 'package:flutter_messengerpro/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MessengerPro',
      theme: ThemeData(
       primaryColor: Color.fromARGB(255, 42, 43, 42),
        accentColor: Color.fromARGB(255, 83, 83, 83),
      ),
      debugShowCheckedModeBanner: false,
      home:  SplashPage(),
    );
  }
}
