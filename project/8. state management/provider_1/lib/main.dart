import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
      return Provider(
        create :(context){
          return Company(companyName:"Google",empCount:250);
        },
        child:const MaterialApp(
          debugShowCheckedModeBanner:false,

          home:MainApp(),
        ),
      );
  }

}
class MainApp extends StatefulWidget{
    const MainApp({super.key});

    @override
    State<MainApp> createState() => _MainAppState();

}

class _MainAppState extends State<MainApp>{
    @override
    Widget build(BuildContext context){
      log("IN MAIN APP BUILD ");
      return Scaffold(
        
        appBar:AppBar(
          title:const Text("Provider 1 demo"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
              Text(Provider.of<Company>(context).companyName),
              const SizedBox(height:20),
              Text("${Provider.of<Company>(context).empCount}"),
          ],
        ),
      );

    }


}
class Company{
    final String companyName;
    final int empCount;

    const Company({required this.companyName,required this.empCount});

}