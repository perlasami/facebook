
import 'package:flutter/material.dart';

class Navigatorpage extends StatelessWidget{
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 100,vertical: 350),
        child: Text(textAlign: TextAlign.center,"navigator page",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
      ),

    );
  } }