import 'package:facebook/homescreen.dart';
import 'package:facebook/loginscreen.dart';
import 'package:facebook/splashscreen.dart';

import 'package:flutter/material.dart';

import 'navigatorpage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: "/",
        routes: {
        'splash':(context)=>SplashScreen(),
        'Login':(context)=> Loginscreen(),
          'Home':(context)=> Homescreen(),
          "Navigatorpage":(context)=> Navigatorpage(),
        },

        home: SplashScreen()
    );
  }
}

