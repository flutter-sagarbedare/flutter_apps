import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:music_app_ui/view/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class Song_Player_Screen extends StatefulWidget{
  const Song_Player_Screen({super.key});

  @override
  State<Song_Player_Screen> createState()=> _Song_Player_ScreenState();
}
class _Song_Player_ScreenState extends State<Song_Player_Screen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        bottomNavigationBar: Navigation_Bar(),
      body:Column(
        children:[
          Container(

          child:Stack(
            children:[
              Image.asset('img/alone_in_abyss.png'),
              Center(
                child:Column(
                  children: [
              const SizedBox(height:500),

                Text("Alone in the Abyss",
                style:GoogleFonts.inter(
                  fontSize:24,
                  fontWeight:FontWeight.w400,
                  color:const Color.fromRGBO(230, 154, 21, 1),
                ),
                ),
                Text("Youlakou",
                style:GoogleFonts.inter(
                  fontSize:13,
                  fontWeight:FontWeight.w600,
                  color:const Color.fromRGBO(255, 255, 255, 1)
                ),
                ),
              ],)),
            ],
            )
          ),
          Row(
            
            mainAxisAlignment:MainAxisAlignment.end,
            children:[
              Icon(
                Icons.ios_share_rounded,
                color:const Color.fromRGBO(230, 154, 21, 1),
                size:28

              ),
              const SizedBox(width:10),
            ]
          ),
          Padding(padding:EdgeInsets.all(12),
          child:Row(
            children:[
               Text("Dynamic Warmup |",
                    style:GoogleFonts.inter(
                      fontSize:15,
                      color:const Color.fromRGBO(255, 255, 255, 1),
                      fontWeight:FontWeight.w400,
                    ),
                    ),
                    Spacer(flex:1),
               Text("4 min",
                    style:GoogleFonts.inter(
                      fontSize:15,
                      color:const Color.fromRGBO(255, 255, 255, 1),
                      fontWeight:FontWeight.w400,
                    ),
                    ),
            ],
          ),
          
          ),
          Stack(
            children: [
              const SizedBox(height:20),
              Image.asset('img/song_length.png'),
              Image.asset('img/song_level.png'),
            ],
          ),

          Padding(
            padding:const EdgeInsets.only(top:20,left:33,right:33,),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
                children:[                
                Image.asset('img/loop.png'),
                Image.asset('img/previous.png'),
                const Icon(Icons.play_circle_sharp,
                color:Colors.white,
                size:65,
                ),
                // Image.asset('img/play.png'),
                Image.asset('img/next.png'),
                Image.asset('img/sound.png'),
              ],
            ),
          ),
        ]
      ),
    );
  }
}