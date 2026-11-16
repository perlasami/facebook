
import 'package:facebook/pass.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              alignment: Alignment.center,
              child: ClipOval(
                child: Image.asset(
                  "assets/images/facebook.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,

                ),
              ),
            ),
            Container(
              width: 353,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.only(top: 50,left: 10),
              alignment: Alignment.centerLeft,
              decoration:
              BoxDecoration(
                color: Color(0xFFF0F2F5),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Color(0xFFCCD0D5),
                  width: 1.0,
                ),),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(

                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Mobile Number or Email address',

                    labelStyle: TextStyle(
                      color: Color(0xFF898F9C),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),

                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorStyle: TextStyle(height: 0),


                  ),
                  validator: validateEmail,
                ),

              ),
            ),
            Container(
              width: 353,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.only(top: 10,left: 10,bottom: 10),
              alignment: Alignment.centerLeft,
              decoration:
              BoxDecoration(
                color: Color(0xFFF0F2F5),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Color(0xFFCCD0D5),
                  width: 1.0,
                ),),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: const PasswordField(),

              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: SizedBox(


                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).pushNamed('Home');
                },

                    child: Text('Login',style: TextStyle(fontWeight: FontWeight(400),fontSize: 16,color: Colors.white)),style:ElevatedButton.styleFrom(backgroundColor:Color(0XFF1877F2 ),padding: EdgeInsets.all(15) ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)))
                ),
              ),
            ) ,
            TextButton(onPressed: (){},
                child: Text("Forgotten Password ?",style: TextStyle(color: Color(0XFF898F9C),fontSize: 16,fontWeight: FontWeight.w500),)),

            Container(
              margin: EdgeInsets.only(top: 170,bottom: 20),
              child: SizedBox(

                width: 353,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Home');
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Color(0xFF1877F2),
                    side: BorderSide(
                      color: Color(0xFF1877F2),
                      width: 1.5,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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

          ],
        )

    );
  }

}


//
// Container(
// width: 353,
// padding: EdgeInsets.all(13),
// margin: EdgeInsets.only(top: 50,left: 10),
// alignment: Alignment.centerLeft,
// decoration:
// BoxDecoration(
// color: Color(0xFFF0F2F5),
// borderRadius: BorderRadius.circular(14),
// border: Border.all(
// color: Color(0xFFCCD0D5),
// width: 1.0,
// ),),
// child: Text("Mobile Number or Email Address",style: TextStyle(color: Color(0XFF898F9C),fontWeight: FontWeight.w400,fontSize: 16),),
// )
// Source - https://stackoverflow.com/a/63292899
// Posted by JideGuru, modified by community. See post 'Timeline' for change history
// Retrieved 2026-11-16, License - CC BY-SA 4.0

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email';
  }

  if (!value.contains('@') || !value.contains('.')) {
    return 'Please enter a valid email';
  }

  return null;
}

