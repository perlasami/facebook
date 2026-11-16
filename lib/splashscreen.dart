import 'package:facebook/loginscreen.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Loginscreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 200),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/facebook.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,


                ),
              ),
            ),
             SizedBox(width: 70,height: 300),
            Text("From",style: TextStyle(color: Color(0XFF898F9C)),),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 150),
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                child: Row(
                  children: [
                    Text(
                      '∞',
                      style: TextStyle(
                        color: Color(0xFF1877F2),
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Meta',
                      style: TextStyle(
                        color: Color(0xFF1877F2),
                        fontSize: 25,


                      ),
                    ),
                  ],
                ),
              )
            ),

          ],
        ),
      ),
    );
  }
}