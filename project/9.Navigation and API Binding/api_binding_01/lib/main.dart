import 'package:flutter/material.dart';
import 'package:api_binding_01/view_employee.dart';
void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:viewEmployee(),
    );
  }
}