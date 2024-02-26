import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
      const Assignment5({super.key});

      @override
      State<Assignment5> createState() => _Assignment5State();
}
class _Assignment5State extends State<Assignment5>{
      bool box1color = false;
      bool box2color= false;
      @override
      Widget build(BuildContext context){
            return MaterialApp(
                  home:Scaffold(
                      appBar: AppBar(
                        title: const Text("Color box"),
                        backgroundColor: Colors.blue,
                      ),
                      body:Column(
                        mainAxisAlignment: MainAxisAlignment.center,                     
                        children: [
                          Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                              children:[
                                Container(
                                height: 100,
                                width: 100,
                                color: box1color ? Colors.red : Colors.black,
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              ElevatedButton(
                                onPressed: (){
                                  setState((){
                                    box1color = true;
                                  });
                                },
                                child:const Text("Color box 1"),
                              ),
                              ],
                              ),
                              const SizedBox(
                                width:20,
                              ),


                              // box 2
                               Column(
                              children:[
                                Container(
                                height: 100,
                                width: 100,
                                color: box2color ? Colors.black: Colors.red,
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              ElevatedButton(
                                onPressed: (){
                                  setState((){
                                    box2color = true;
                                  });
                                },
                                child:const Text("Color box 2"),
                              ),
                              ],
                              ),
                              const SizedBox(
                                width:20,
                              ),
                            ],
                          )
                        ],
                      ),

                  ),

            );
      }

}