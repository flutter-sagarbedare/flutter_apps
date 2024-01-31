import 'package:flutter/material.dart';

class statefulassignment2 extends StatefulWidget{
    const statefulassignment2({super.key});

    @override
    State<statefulassignment2> createState()=> _Assignment2State();

}
class _Assignment2State extends  State<statefulassignment2>{
        bool box1color =false;
       bool box2color = false;

        @override
        Widget build(BuildContext context){
            return MaterialApp(
                home:Scaffold(
                    appBar: AppBar(
                        title: const Text("Color box"),
                        backgroundColor: Colors.blue,
                    ),
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  color: box1color ? Colors.red:Colors.black,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  onPressed:(){
                                    setState((){
                                      box1color=true;
                                    });
                                  },
                                 child: const Text("Color box1")),
                              ],
                              
                            ),  
                        const SizedBox(width: 20,),
                            Column(
                              children: [ 
                                Container(
                                  height:100,
                                  width: 100,
                                  color: box2color ? Colors.blue : Colors.black,
                                ),
                                const SizedBox(height: 20,),

                                //box 2  button
                                ElevatedButton(
                                  onPressed: (){
                                    setState((){
                                        box2color=true;
                                    });
                                  },
                                    child:const Text( "Color box 2"),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ), 
                             const SizedBox(
                              width:20
                              ),  

                          ],

                        ),
                      ],
                      
                    ),

                ),
            );

        }
}