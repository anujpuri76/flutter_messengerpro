

import 'package:flutter_messengerpro/pages/home_page.dart';
import 'package:flutter_messengerpro/pages/login_page.dart';
import 'package:flutter_messengerpro/pages/splash_page.dart';
import 'package:flutter_messengerpro/pages/terms%20of%20service_page.dart';
import 'package:go_router/go_router.dart';
import'package:flutter/material.dart';

final router = GoRouter(
    routes: [
      GoRoute(
        name: "splash",
        path: "/",
        pageBuilder: (context, state) =>  MaterialPage(
          child:SplashPage(),
        ),
      ),

       GoRoute(
       name: "login",
        path: "/login",
         pageBuilder: (context, state) => const MaterialPage(
          child:LoginPage(),),           
       ),
      
        GoRoute(
       name: "home",
        path: "/home",
         pageBuilder: (context, state) => const MaterialPage(
          child: HomePage(),),           
       ),
       GoRoute(
        name: "terms of service",
        path: "/termsofservice",
        pageBuilder: (context, state) => const MaterialPage(
          child:termsofservice(),
        ),
      ),
       
      
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
  );
// }
