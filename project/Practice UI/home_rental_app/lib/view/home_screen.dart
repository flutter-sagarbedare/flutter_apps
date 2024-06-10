import 'dart:ui';

import 'package:flutter/material.dart';
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
            child:
          ),
          Row(
            children:[

            ]
          ),
        ],
      ),
      )
    );
  }
}