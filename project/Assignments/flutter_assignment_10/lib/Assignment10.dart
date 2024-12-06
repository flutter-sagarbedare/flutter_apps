// ignore: file_names
import 'package:flutter/material.dart';

class Assignment10 extends StatelessWidget{
    const Assignment10({super.key});
    @override
    Widget build(BuildContext context){
      return const Scaffold(
        
        //Question 1:-
       /*     appBar:AppBar(
              title: const Text("Assignment 10 - 1"),
              backgroundColor: Colors.red,
              actions:const [
                  Icon(
                    Icons.notification_add,
                  ),
                  SizedBox(
                    width:30
                  ),
                  Icon(
                    Icons.send,
                  ),
                  SizedBox(
                    width:30
                  ),
              ],
            ),
        */

        // Question 2
      /*    appBar:AppBar(
             title: Text("Assignment 10 - 2"),
             centerTitle: true,
             actions: const [
              Icon(
                Icons.add_shopping_cart_outlined,
              ),
              SizedBox(
                width:20,
              ),
             ],
          ),
        */

        //Question 3
 /*       appBar: AppBar(
          title:const Text("Hello Core2Web"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),

        body: Center(
          child:
        Container(
          width:360,
          height: 200,
          color:Colors.blue,
        )
        ),
*/

    body:Center(
      child:
      SizedBox(
        child:
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image(
            height: 150,
            width: 150,
            image:AssetImage('image.jpg') ,
            ),
            SizedBox(
              height: 30,
            ),
           Image(
            height: 150,
            width: 150,
            image:AssetImage('image.jpg') ,
            ),
            SizedBox(
              height: 30,
            ),
           Image(
            height: 150,
            width: 150,
            image:AssetImage('image.jpg') ,
            ),
        ],
       ),
      ),
       
    ),




      );
    }

}