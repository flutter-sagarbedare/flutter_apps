import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatefulWidget{
    const AboutUs({super.key});

    State createState() => _AboutUsState();


}
class _AboutUsState extends State<AboutUs>{
    @override
    Widget build(BuildContext context){

        return Scaffold(
          body:Center(
            child:Text("About us")
          ),
        );
    }

}