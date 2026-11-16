
import 'package:facebook/models/storiesmodels.dart';
import 'package:facebook/postswidget.dart';
import 'package:facebook/stories.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'navigatorpage.dart';
class Homescreen extends StatelessWidget{
  List<Story>storyWidget=[
  ];
  void addStories(){
    for(int i=1;i<6;i++){
      storyWidget.add(Story(
          profImage: "assets/images/prof${i}.jpg",
          storyImage: "assets/images/story${i}.jpg")
      );
    }
  }
  Homescreen(){
    addStories();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar:
        AppBar(
          leading: Text("Facebook",style: TextStyle(color: Color(0XFF1877F2),fontSize: 30,fontWeight:FontWeight.w800, ),),
          leadingWidth: 150,
          actions: [

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
               spacing: 8,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 15,
                    child: Icon(Icons.add,color: Colors.white,size: 20,),
                  ),
                  Icon(Icons.search,size: 35,),
                  FaIcon(
                    FontAwesomeIcons.facebookMessenger,
                    color: Colors.black,
                    size: 30,
                  )

                ],
              ),
            ),

          ],
            bottom: PreferredSize(preferredSize: const Size.fromHeight(40),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(

                  spacing: 28,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: Color(0xFF1877F2),
                          size: 35,
                        ),

                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          'Navigatorpage',

                        );
                      },
                      child: const Icon(
                        Icons.ondemand_video_outlined,
                        color: Color(0xFF898F9C),
                        size: 40,
                      ),
                    )
                  ,
                    Icon(
                      Icons.storefront_outlined,
                      color: Color(0xFF898F9C),
                      size: 40,
                    ),
                    Icon(
                      Icons.account_circle_outlined,
                      color: Color(0xFF898F9C),
                      size: 40,
                    ),
                    Icon(
                      Icons.notifications_none_outlined,
                      color: Color(0xFF898F9C),
                      size: 40,
                    ),
                    ClipOval(
                      child: Image.asset(
                        "assets/images/messy.jpg",
                        width: 38,
                        height: 38,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),


                  ],

                ),
              ),


            )



        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 7),
          child:SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 1,
                    ),
                    Divider(
                      color: Color(0xFF1877F2),
                      endIndent: 330,
                      thickness: 3,
                      height: 1,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12,left: 10),
                  child: Row(
                    spacing: 10,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/messy.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Text("What's in Your Mind?",style: TextStyle(color: Color(0XFF898F9C),fontSize: 16,fontWeight: FontWeight.w600),),
                      Container(
                        margin: EdgeInsets.only(left: 105),
                        child: Transform.scale(

                          scaleX: -1.0,
                          scaleY: 1.0,
                          child: Icon(
                            Icons.photo_library,
                            color: Color(0XFF0DE571),
                            size: 32.0,
                          ),
                        ),
                      )
                    ],
                  ),

                ),
                Divider(
                  color: Color(0XFF898F9C),
                  thickness: 2.3,
                  height: 35,
                ),

                SizedBox(
                  height: 178,
                  child: ListView.separated(itemBuilder:(context, index) {
                    if(index==0){
                      return  Container(
                        width: 112,
                        height: 178,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                    "assets/images/messy.jpg",
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: Text(
                                        "Create a\nStory",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          height: 1.1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 32,
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: const Color(0XFF1877F2),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 2.5),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return Stories(profImage: storyWidget[index-1].profImage,storyImage:storyWidget[index-1].storyImage);
                  },
                    itemCount: storyWidget.length+1,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(width: 10),

                  ),
                ),
                Divider(
                  color: Color(0XFF898F9C),
                  thickness: 2.3,
                  height: 35,
                ),
                Posts(),
                Posts(),
                Posts(),

              ],
            )



              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Row(
              //     spacing: 8,
              //     children: [
              //       ClipOval(
              //         child: Image.asset(
              //           "assets/images/rote.png",
              //           width: 50,
              //           height: 50,
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //       Column(
              //         spacing: 3,
              //         children: [
              //           Text("Route",style: TextStyle(color: Color(0XFF242527),fontSize: 16,fontWeight: FontWeight.w500),),
              //           Row(
              //             children: [
              //               Text("8h .",style: TextStyle(color: Color(0XFF898F9C),fontSize: 12,fontWeight: FontWeight.w500),),
              //               Icon(Icons.public_rounded,size: 10.5,color: Color(0XFF898F9C))
              //             ],
              //           ),
              //         ],
              //       ),
              //       Spacer(),
              //
              //       Icon(Icons.more_horiz)
              //     ],
              //   ),
              // ),
              // Container(
              //    height: 240,
              //   width: double.infinity,
              //
              //     child: Image.asset("assets/images/route-body.jpg",fit: BoxFit.cover,)),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8,right: 14),
              //   child: Row(
              //     spacing: 10,
              //     children: [
              //       FaIcon(
              //         FontAwesomeIcons.heart,
              //         size: 26,
              //         color: Colors.black,
              //       ),
              //       FaIcon(
              //         FontAwesomeIcons.commentDots,
              //         size: 26,
              //         color: Colors.black,
              //       ),
              //       FaIcon(
              //         FontAwesomeIcons.paperPlane,
              //         size: 25,
              //         color: Colors.black,
              //       ),
              //       Spacer(),
              //       FaIcon(
              //         FontAwesomeIcons.bookmark,
              //         size: 26,
              //         color: Colors.black,
              //       ),
              //     ],
              //   ),
              // ),
              // Divider(
              //   color: Color(0XFF898F9C),
              //   thickness: 2.3,
              //   height: 35,
              // ),






          ),) ,


        );

  }


}