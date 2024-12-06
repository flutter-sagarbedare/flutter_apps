import 'package:flutter/material.dart';
import '/Assignment9.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override 
    Widget build(BuildContext context){
      return const MaterialApp(
        title:"Assignment 9",         
        home:Assignment9(),
      );
    }

}