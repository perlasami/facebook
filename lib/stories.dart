
import 'package:flutter/material.dart';

class Stories extends StatelessWidget{
  String profImage;
  String storyImage;
  Stories({required this.profImage,required this.storyImage});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 178,
      decoration: BoxDecoration(        borderRadius: BorderRadius.all(
        Radius.circular(28),
      ),),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Image.asset(storyImage,fit: BoxFit.fill,height: double.infinity,),
          Container(
            margin: EdgeInsets.all(7),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color(0XFF1877F2),),
            child: ClipOval(
              child: Image.asset(
                profImage,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),


        ],
      ),
    );
  }

}