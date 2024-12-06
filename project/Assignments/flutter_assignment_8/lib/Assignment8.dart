import 'package:flutter/material.dart';

class Assignment8 extends StatefulWidget{
  const Assignment8({super.key});

  @override
  State<Assignment8> createState() => _Assignment8State();

}
class _Assignment8State extends State<Assignment8>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title:const Text("Instagram",
            style:TextStyle(fontStyle: FontStyle.italic,
            color:Colors.black,
            fontSize: 30,
            ),
            ),
            actions: const [
              Icon(
                Icons.favorite_outline_rounded,
                color:Colors.red,
              ),
              SizedBox(width: 20,),
              Icon(
                Icons.message_sharp,
                color:Colors.red,
              ),              
            ],
          ),
          body:Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network("",
                  width:double.infinity,
                  ),
                  
                  Row(
                    children: [
                      IconButton(
                        onPressed: (){} ,
                        icon:const Icon(Icons.favorite_outline_outlined
                        ),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon:const Icon(Icons.comment_outlined),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon:const Icon(Icons.send),
                        ),
                    ],
                  )
                ],
              )
            ],
          )

    );
  }
}