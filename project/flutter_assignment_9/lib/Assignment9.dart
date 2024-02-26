import 'package:flutter/material.dart';


class Assignment9 extends StatelessWidget{
        const Assignment9({super.key});
        @override
        Widget build(BuildContext context){
          return Scaffold(
            appBar:AppBar(
              title:const Text("Netflix"),
              backgroundColor: Colors.red,
            ),
            body:SingleChildScrollView(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Movies",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:Row(
                      children: [
                         const SizedBox(
                          width:20,
                        ),
                        Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-imdexnggxy-portrait.jpg",
                        height: 400,
                        width: 270,
                        ),
                        const SizedBox(
                          width:20,
                          ),
                         const SizedBox(
                          width:20,
                        ),
                        Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-imdexnggxy-portrait.jpg",
                        height: 400,
                        width: 270,
                        ),
                        const SizedBox(
                          width:20,
                          ),
                         const SizedBox(
                          width:20,
                        ),
                        Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-imdexnggxy-portrait.jpg",
                        height: 400,
                        width: 270,
                        ),
                      

                      ],
                    )
                  )
                ],
              )
            ),
          );
        }
  
}