import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget{
    const Category({super.key});

    State createState() => _CategoryState();
}
class _CategoryState extends State<Category>{
    @override
    Widget build(BuildContext context){

        return Scaffold(
          body:Center(
            child:Text("Category")
          ),
        );
    }

}