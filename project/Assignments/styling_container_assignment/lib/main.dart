import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:containerDemo(),
    );
  }
}

class containerDemo extends StatefulWidget{
  const containerDemo({super.key});
  @override 
  State createState() => _ContainerDemo();

}
class _ContainerDemo extends State{

    @override
    Widget build(BuildContext context){
      return Scaffold(
              appBar:AppBar(
                title: const Text("Sagar"),
              ),
              body:Container(
                // You cannot use color and border color at same time but can be used using decoration parameter
                // color:Colors.red,
                height:100,
                width:100,
                // padding:const EdgeInsets.symmetric(
                //   vertical:10,
                //   horizontal:10,
                // ),
                // padding:const EdgeInsets.only(
                //   top:10,
                //   left:20,
                // ), 
                padding:const EdgeInsets.all(10),
                
                // margin:const EdgeInsets.symmetric(
                //   vertical:10,
                //   horizontal:20,
                // ),
                // margin:const EdgeInsets.only(top:20,)

                margin:const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color:Colors.yellow,
                      border:Border.all(
                        color:Colors.black,
                        width:5,
                      ),
                      borderRadius:const BorderRadius.all(
                        Radius.circular(80),
                      ),

                      boxShadow:const [
                        BoxShadow(
                          color:Colors.purple,offset:Offset(10,10),spreadRadius:11,
                          blurRadius:8
                        ),
                      ],
                    
                      gradient:LinearGradient(
                        stops:[0.3,0.6],
                        colors:[Colors.red,Colors.green],
                      ),
                ),
              ),
              // body:Container(
              //   height:200,
              //   width:200,
              //   // color:Colors.red,  if you use border then you cannot assign color to container only one can used.


              //   // padding:const EdgeInsets.only(left:10,top:20,),


              //   // margin:const EdgeInsets.only(left:10,top:20,),


              //   decoration:BoxDecoration(
              //     borderRadius:const BorderRadius.all(
              //       Radius.circular(20),
              //     ),
              //     border:Border.all(
              //       color:Colors.black,
              //       width:5,
              //     ),

              //     boxShadow:const [
              //       BoxShadow(
              //       color:Colors.purple,offset:Offset(30,30),blurRadius:8),                
                    
              //       BoxShadow(
              //         color:Colors.red,offset:Offset(20,20),
              //         blurRadius:8),
              //       BoxShadow(
              //         color:Colors.green,offset:Offset(10,10),blurRadius:8
              //       ),
              //     ],

              //     gradient:const LinearGradient(
              //       stops:[0.3,0.5],
              //       colors:[Colors.red,Colors.green],
              //     )
              //     ),
                  
              //   ),
                
             

      );
    }

}