import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:flutter/widgets.dart';



class Zomato{
    int? orderNo;
    final String custName;
    final String hotelName;
    final String food;
    final double bill;

    Zomato({
      required this.orderNo,
      required this.custName,
      required this.hotelName,
      required this.food,
      required this.bill,
    });

    Map<String,dynamic> zomatoMap(){
      return {
        'custName':custName,
        'hotelName':hotelName,
        'food':food,
        'bill':bill,
      };
    }

    @override 
    String toString(){
      return '{orderNo:$orderNo,custName:$custName,food:$food,bill:$bill}';
    }
}

dynamic database;

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home:Scaffold(
        body:Text("sagar"),
      ),
    );
  }
}