import 'package:flutter/material.dart';

class viewEmployee extends StatefulWidget{
  const viewEmployee({super.key});

  @override
  State createState() => _viewEmployeeState();
}

class _viewEmployeeState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text("Api Binding with ModelClass"),
        centerTitle:true,
        backgroundColor:Colors.blue,
      ),
      body:const Center(
        child:Text("Sagar")
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){
          setState((){           
          viewEmployeeFun();
          });
        },
        child:const Icon(Icons.add)
      ),
    );
  }
  
  void viewEmployeeFun(){

  }
}