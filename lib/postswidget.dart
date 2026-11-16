
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            spacing: 8,
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images/rote.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                spacing: 3,
                children: [
                  Text("Route",style: TextStyle(color: Color(0XFF242527),fontSize: 16,fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Text("8h .",style: TextStyle(color: Color(0XFF898F9C),fontSize: 12,fontWeight: FontWeight.w500),),
                      Icon(Icons.public_rounded,size: 10.5,color: Color(0XFF898F9C))
                    ],
                  ),
                ],
              ),
              Spacer(),

              Icon(Icons.more_horiz)
            ],
          ),
        ),
        Container(
            height: 240,
            width: double.infinity,

            child: Image.asset("assets/images/route-body.jpg",fit: BoxFit.cover,)),
        Padding(
          padding: const EdgeInsets.only(left: 8,right: 14),
          child: Row(
            spacing: 10,
            children: [
              FaIcon(
                FontAwesomeIcons.heart,
                size: 26,
                color: Colors.black,
              ),
              FaIcon(
                FontAwesomeIcons.commentDots,
                size: 26,
                color: Colors.black,
              ),
              FaIcon(
                FontAwesomeIcons.paperPlane,
                size: 25,
                color: Colors.black,
              ),
              Spacer(),
              FaIcon(
                FontAwesomeIcons.bookmark,
                size: 26,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Divider(
          color: Color(0XFF898F9C),
          thickness: 2.3,
          height: 35,
        ),
      ],
    );
  }

}