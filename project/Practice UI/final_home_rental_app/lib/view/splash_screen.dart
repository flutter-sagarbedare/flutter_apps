import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_home_rental_app/view/home_screen.dart';

class SplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:const Color.fromRGBO(255, 255, 255, 1),
        body:Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.start,
          children:[
            Image.asset('img/home_splash_image.png',
            width:350,
            ),
            const SizedBox(height:18),
            Center(
             child: Text("Lets find your Paradise",
             style:GoogleFonts.poppins(
              fontSize:22,
              fontWeight:FontWeight.w600,
              color:const Color.fromRGBO(0, 0, 0, 1),
             ),
             ),
            ),
             const SizedBox(height:8),
             Text("Find your perfect dream space \n          with just a few clicks",
             style:GoogleFonts.poppins(
              fontSize:14,
              fontWeight:FontWeight.w400,
              color:const Color.fromRGBO(101,101,101, 1),
             ),
             ),
             const SizedBox(height:10,),

             GestureDetector(
              onTap:(){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder:(context)=>const HomeScreen(),
                  ),
                );
              },
              child:Container(
                width:220,
                height:55,
                decoration:const BoxDecoration(
                    color:Color.fromRGBO(32, 169, 247, 1),
                    borderRadius:BorderRadius.all(Radius.circular(40))
                ),
                child:Center(child:Text("Get Started",
             style:GoogleFonts.poppins(
              fontSize:22,
              fontWeight:FontWeight.w400,
              color:const Color.fromRGBO(255, 255, 255, 1),
             ),
             ),
             ),
              ),
             ),
          ],
        ),
    );
  }

}