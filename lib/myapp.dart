import 'package:flutter_messengerpro/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp.router(

      title: "MESSENGERPRO",
      routeInformationParser: router.routeInformationParser,
      routerDelegate:router.routerDelegate,
      routeInformationProvider:router.routeInformationProvider,
       debugShowCheckedModeBanner: false,
    );   
  }
}


