import 'package:flutter/material.dart';
import 'package:final_home_rental_app/view/splash_screen.dart';
import 'package:final_home_rental_app/view/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body:HomeScreen(), 
             ),
    );
  }
}
