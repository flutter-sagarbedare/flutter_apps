import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'loginScreen.dart';

class splashScreen extends StatefulWidget {
  splashScreen({super.key});

  @override
  State createState() => _splashScreen();
}

class _splashScreen extends State<splashScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(flex: 2),
          Center(
            child: GestureDetector(
              onTap:(){
                Navigator.of(context).push(
                 MaterialPageRoute(
                  builder:(context) => loginScreen()
                 ) 
                );
              },
              child: Container(
                height: 144,
                width: 144,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(234, 238, 235, 1),
                ),
                child: Image.asset('img/logo_1.png'),
              ),
            ),
          ),
         const  Spacer(flex: 2),
          Text(
            "Expense Manager",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(0, 0, 0, 1)),
          ),
         const  Spacer(flex: 1),
        ]),
      ),
    );
  }
}
