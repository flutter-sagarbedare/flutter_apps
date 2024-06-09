import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        // floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Row(
          children: [
            Container(
              height: 75,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(19, 19, 19, 1),
                // color:Colors.red,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                boxShadow:[
                  BoxShadow(
                    blurRadius:14,
                    spreadRadius:2,
                    color:Colors.black
                    )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(right:25,left:25,bottom:4,),
                child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:CrossAxisAlignment.center, 
                      children: [
                                GestureDetector(
                                  onTap:(){},
                                  child: Column(
                                    children: [
                                      const SizedBox(height:12),
                                      const Icon(Icons.favorite_outline,
                                          color: Color.fromRGBO(157, 178, 206, 1),
                                          size:26,
                                          ),
                                          const SizedBox(height:8),
                                      Text(
                                        "Favorite",
                                        style: GoogleFonts.abel(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(157, 178, 206, 1),
                                        
                                        ),
                                      ),
                                    ],
                                   ),
                                ),
                                 const SizedBox(width:8),
                                GestureDetector(
                                  child: Column(
                                    children: [
                                      const SizedBox(height:12),
                                      const Icon(Icons.search_outlined,
                                          color: Color.fromRGBO(157, 178, 206, 1),
                                          size:26,
                                          ),
                                          const SizedBox(height:8),
                                      Text(
                                        "Search",
                                        style: GoogleFonts.abel(
                                          fontSize: 13,
                                          color: Color.fromRGBO(157, 178, 206, 1),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                   ),
                                ),
                                 const SizedBox(width:8),
                                GestureDetector(
                                  child: Column(
                                    children: [
                                      const SizedBox(height:12),
                                      Image.asset("img/home.png",
                                          color: Color.fromRGBO(157, 178, 206, 1),
                                          width:22,
                                          ),
                                          const SizedBox(height:8),
                                      Text(
                                        "Home",
                                        style: GoogleFonts.abel(
                                          fontSize: 13,
                                          color: Color.fromRGBO(157, 178, 206, 1),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                   ),
                                ),
                                 const SizedBox(width:8),
                                GestureDetector(
                                  child: Column(
                                    children: [
                                      const SizedBox(height:12),
                                      // Image.asset('img/cart.png',
                                      //     color: Color.fromRGBO(157, 178, 206, 1),
                                      //     width:22,
                                      //     ),
                                          const SizedBox(height:8),
                                      Text(
                                        "Cart",
                                        style: GoogleFonts.abel(
                                          fontSize: 13,
                                          color: Color.fromRGBO(157, 178, 206, 1),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                   ),
                                ),
                                 const SizedBox(width:8),
                                GestureDetector(
                                  child: Column(
                                    children: [
                                      const SizedBox(height:12),
                                      const Icon(Icons.person_outline,
                                          color: Color.fromRGBO(157, 178, 206, 1),
                                          size:26,
                                          ),
                                          const SizedBox(height:8),
                                      Text(
                                        "Profile",
                                        style: GoogleFonts.abel(
                                          fontSize: 13,
                                          color: Color.fromRGBO(157, 178, 206, 1),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                   ),
                                ),
                                //  const SizedBox(width:8),
                ]),
              ),
            ),
          ],
        ),
        body:Column(
          children:[
            Container(
              child:Stack(
                children:[
                Image.asset('img/slide1.png'),
                 Text("A.L.O.N.E",
                style:GoogleFonts.inter(
                  fontSize:17,
                  fontWeight:FontWeight.w600,
                ),
                ),
                const SizedBox(height:5),
                GestureDetector(
                  onTap:(){},
                  child:Container(
                    height:37,
                    width:127,
                    decoration:BoxDecoration(
                      color:Color.fromRGBO(255, 46, 0, 1),
                    ),
                    child:Text("Subscribe",
                    style:GoogleFonts.inter(
                      fontSize:13,
                      fontWeight:FontWeight.w400,
                      color:Color.fromRGBO(19, 19, 19, 1),
                    ),
                    ),
                  ),
                ),
              ],
            ),
            ),
          ]
        ),
        );
  }
}
