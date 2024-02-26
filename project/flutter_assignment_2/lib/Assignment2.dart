import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
    const Assignment2({super.key});

      @override
      Widget build(BuildContext context){

        return Scaffold(
            appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text("Assignment 3"),
            ),
            body: Center(
              child: 
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height:100,
                            width:100,
                            color:Colors.red,
                            ),
                          Container(
                            height:100,
                            width:100,
                            color:Colors.green,
                            ),
                          Container(
                            height:100,
                            width:100,
                            color:Colors.blue,
                            ),
                        ],
            ),
          
            )
        );
      }

}
