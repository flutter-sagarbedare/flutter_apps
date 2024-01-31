import 'package:flutter/material.dart';

class StatefulAssignment1 extends StatefulWidget{
    const StatefulAssignment1({super.key});
  @override 
    State<StatefulAssignment1> createState() => _StatefulAssignment1State();
}
class _StatefulAssignment1State extends State<StatefulAssignment1>{
      int? _count  =0;
      void _printTableValue(){
          setState(() {
           _count = _count! +2;
          });

      }
    @override 
    Widget build(BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "Table of 2",
              ),
            ),
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        "Click the button to print table values",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "$_count",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: _printTableValue,
                     child: const Text("print"),
                     ),      
                  ],
                ),

            ),
          );

    }
}