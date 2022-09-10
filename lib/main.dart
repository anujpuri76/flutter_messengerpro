import 'package:flutter/material.dart';
import 'package:flutter_messengerpro/pages/home_page.dart';
import 'package:flutter_messengerpro/pages/splash_page.dart';
import 'package:flutter_messengerpro/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
     
      title: "MESSENGERPRO",
      debugShowCheckedModeBanner: false,
      
  
      theme: ThemeData(
       primaryColor: Color.fromARGB(255, 42, 43, 42),    
        
      ),
      
      // debugShowCheckedModeBanner: false,
       routeInformationParser: router.routeInformationParser,
      routerDelegate:router.routerDelegate,
      routeInformationProvider:router.routeInformationProvider,
    );
  }
}
