import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        // body:ListView.builder(
        //   itemCount:25,
        //   padding:EdgeInsets.all(10),         
        //   itemBuilder:(BuildContext context,int index){
        //     return SizedBox(
        //       child: Container(
        //             color:Colors.red,
        //             height:100,
        //             width:100,
        //             margin:EdgeInsets.all(10),
        //             child:Text("sagar")
        //         ),
        //         // SizedBox(
        //         //   height:10
        //         // ),
        //     );
        //   }
        // ),

        body:ListView.separated(
          itemCount:25,
          separatorBuilder:(context, index) => const Divider(),
          itemBuilder:(BuildContext context,int index){
            return SizedBox(
              
              child:Container(
                margin:EdgeInsets.all(10),
                height:100,
                width:100,
                color:Colors.black,
                child:Text("sagar",
                style:TextStyle(
                  color:Colors.yellow,
                ))
              ),
            );
          }
        ),
      ),
    );
  }
}
