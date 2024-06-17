import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State createState()=> _HomeScreenState();
}
class _HomeScreenState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:const Color.fromRGBO(237, 237, 237, 1),
      body:Padding(
        padding:EdgeInsets.only(top:66,left:22,right:22,),
        child:Column( 
          crossAxisAlignment:CrossAxisAlignment.start,       
        children:[
          Row(
            children:[
              // const SizedBox(width:20),
              Text("Hey Sagar",
              style:GoogleFonts.poppins(
                fontSize:15,
                fontWeight:FontWeight.w500,
                color:const Color.fromRGBO(101, 101, 101, 1),

              ),
              ),
              Spacer(flex:1),
              Icon(Icons.circle,
              size:48,
              ),
              // const SizedBox(width:20),
            ],
          ),
          const SizedBox(height:8),
          Text(
            "Let’s find your best \nresidence ",
            style:GoogleFonts.poppins(
              fontSize:20,
              fontWeight:FontWeight.w500,
            ),
          ),
          const SizedBox(height:22),
          Container(
            // height:100,
            decoration:const BoxDecoration(
               boxShadow:[
                BoxShadow(
                  blurRadius:20,
                  spreadRadius:2,
                  color:Color.fromRGBO(255, 255, 255, 1),
                ),
               ]
            ),
            child:
             const TextField(
                decoration:InputDecoration(
                  contentPadding:EdgeInsets.only(left:10),
                  prefixIcon:Icon(Icons.search_outlined,size:30,),
                  hintText:"Search Your favourite paradise",
                  border:
                  OutlineInputBorder(
                borderRadius:BorderRadius.all(Radius.circular(14)),
                  borderSide:BorderSide(color:Colors.white,)
                  ),
                  ),
                ),
            ), 
              const SizedBox(height:22),

             Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
                Text("Most Popular",
                style:GoogleFonts.poppins(
                  fontSize:22,
                  fontWeight:FontWeight.w600,
                ),
                ),
                Text("See all",
                style:GoogleFonts.poppins(
                  fontSize:16,
                  fontWeight:FontWeight.w500,
                  color:const Color.fromRGBO(32,169,247,1),
                ),
                ),
            ]
          ),
          SizedBox(
            height:320,
            child: 
          ListView.builder(
            scrollDirection:Axis.horizontal,
            itemBuilder: (context,index){
            return Container();
          })
          ),
          // ListView(
          //   children:[
          //      Container(
          //             width:211,
          //             height:306,
          //             // color:const Color.fromRGBO(254,254,254,1),
          //             child:Column(
          //               children:[
          //                 Image.asset('img/home_1.png'),
          //                 // const SizedBox(height:10),
          //                 Text("Night Hill Villa",
          //                 style:GoogleFonts.poppins(
          //                   fontSize:16,
          //                   fontWeight:FontWeight.w600
          //                 ))
          //               ],
          //             ),
                 
          //   )
          //   ],
          // ),
          // Container(
          //   child:
          // ListView.builder(
          //   scrollDirection:Axis.horizontal,
          //   itemCount:3,
          //   itemBuilder: (context,index){
          //   return Container(
          //             width:211,
          //             height:306,
          //             // color:const Color.fromRGBO(254,254,254,1),
          //             child:Column(
          //               children:[
          //                 Image.asset('img/home_1.png'),
          //                 // const SizedBox(height:10),
          //                 Text("Night Hill Villa",
          //                 style:GoogleFonts.poppins(
          //                   fontSize:16,
          //                   fontWeight:FontWeight.w600
          //                 ))
          //               ],
          //             ),
                 
          //   );
          // })
          // )

        ],
      ),
      )
    );
  }
}