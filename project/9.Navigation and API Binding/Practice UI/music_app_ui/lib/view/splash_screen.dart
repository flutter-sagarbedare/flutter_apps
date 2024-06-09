import 'dart:ui';


import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import '/view/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  decoration:BoxDecoration(
                  
                  ),
                    child: Image.asset(
                  'img/splash_image.png',
                  width: double.maxFinite,
                  height: 648,
                  fit: BoxFit.fill,                 
                ),
                
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 450,
                      ),
                      Text(
                        "Dancing between \n The shadows \n of rhythm",
                        style: GoogleFonts.inter(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height:20
                      ),

                      GestureDetector(
                        onTap:(){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder:(context)=>const HomeScreen(),
                            ),
                          );
                        },
                        child:Container(
                          width:261,
                          height:50,
                          alignment:Alignment.center,
                          decoration:const BoxDecoration(
                            color:Color.fromRGBO(255, 46, 0, 1),
                            borderRadius:BorderRadius.all(Radius.circular(19)),
                            boxShadow:[
                              BoxShadow(
                                color:Color.fromARGB(104, 255, 235, 59),
                                blurRadius:160,
                                spreadRadius:10,

                              ),
                            ],
                          ),
                          child: Text("GetStarted",
                          style:GoogleFonts.inter(
                              fontSize:20,
                              fontWeight:FontWeight.w600,
                          ),
                          ),

                        ),
                      ),
                      const SizedBox(
                        height:20
                      ),

                      GestureDetector(
                        onTap:(){},
                        child:Container(
                          width:261,
                          height:50,
                          alignment:Alignment.center,
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.all(Radius.circular(19)),
                            border:Border.all(color:Color.fromRGBO(255, 46, 0, 1),
                            ),
                          ),
                          child: Text("Continue with Email",
                          style:GoogleFonts.inter(
                              fontSize:20,
                              fontWeight:FontWeight.w600,
                            color:Color.fromRGBO(255, 46, 0, 1),
                              
                          ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height:21,
                      ),
                      Text(
                        "by continuing you agree to terms \n of services and  Privacy policy",
                        style:GoogleFonts.inter(
                          fontSize:14,
                          fontWeight:FontWeight.w600,
                          color:Color.fromRGBO(197, 194, 194, 1),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Text("sagar", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
