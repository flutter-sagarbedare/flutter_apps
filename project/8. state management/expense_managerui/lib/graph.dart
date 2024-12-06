import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphScreen extends StatefulWidget{
    const GraphScreen({super.key});

    State createState() => _GraphScreenState();


}
class _GraphScreenState extends State<GraphScreen>{
    @override
    Widget build(BuildContext context){

        return Scaffold(
          body:Center(
            child:Text("GRaph")
          ),
        );
    }

}