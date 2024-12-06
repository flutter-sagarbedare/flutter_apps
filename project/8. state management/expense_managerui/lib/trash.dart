import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrashScreen extends StatefulWidget{
    const TrashScreen({super.key});

    State createState() => _TrashScreenState();


}
class _TrashScreenState extends State<TrashScreen>{
    @override
    Widget build(BuildContext context){

        return Scaffold(
          body:Center(
            child:Text("Trash")
          ),
        );
    }

}