import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  List images=[
    "https://www.filmfare.com/awards/filmfare-awards-marathi-2017/images/nominations/ajay-gogavale-and-atul-gogavale-sairat.jpg?v=0.01",

    "https://static.spotboye.com/uploads/Maheshtnail_2020-8-19-11-30-14_thumbnail.jpg",

    "https://i.pinimg.com/originals/9c/4e/5e/9c4e5ebbe76b28d9500545dad4214760.jpg",

    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Rahul_Deshpande_-_Singing_in_Pune_in_March_2011.jpg/1200px-Rahul_Deshpande_-_Singing_in_Pune_in_March_2011.jpg",

    "https://www.filmfare.com/awards/filmfare-awards-marathi-2017/images/nominations/ajay-gogavale-and-atul-gogavale-sairat.jpg?v=0.01",
     "https://static.spotboye.com/uploads/Maheshtnail_2020-8-19-11-30-14_thumbnail.jpg",

     "https:i.pinimg.com/originals/9c/4e/5e/9c4e5ebbe76b28d9500545dad4214760.jpg",
     "https://www.filmfare.com/awards/filmfare-awards-marathi-2017/images/nominations/ajay-gogavale-and-atul-gogavale-sairat.jpg?v=0.01",

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            body:SizedBox(
              child:Column(
                children:[
                  Container(
                      height:258,
                      decoration:BoxDecoration(
                        border:Border.all(
                          width:5,
                          color:Colors.black,
                        ),                        
                      ),                         
                      // color:Colors.red,
                      child:ListView.builder(
                        itemCount:7,
                        itemBuilder:(BuildContext context,int index){
                          return Container(
                            height:50,
                            width:100,
                            color:Colors.blue,
                            margin:EdgeInsets.all(5),
                          child:                        
                          Image.network(
                            images[index],
                            ),
                          );
                        }
                      ),
                                         
                  ),
                  Container(
                      height:258,                      
                      // color:Colors.yellow,
                      decoration:BoxDecoration(
                        border:Border.all(
                          width:5,
                          color:Colors.black,
                        ),                        
                      ),                         
                      // color:Colors.red,
                      child:ListView.builder(
                        itemCount:7,
                        itemBuilder:(BuildContext context,int index){
                          return Container(
                            height:50,
                            width:100,
                            color:Colors.yellow,
                            margin:EdgeInsets.all(5),
                          child:                        
                          Image.network(
                            images[index],
                            ),
                          );
                        }
                      ),
                  ),
                  Container(
                      height:258,                      
                      // color:Colors.green,
                      decoration:BoxDecoration(
                        border:Border.all(
                          width:5,
                          color:Colors.black,
                        ),                        
                      ),                         
                      // color:Colors.red,
                      child:ListView.builder(
                        itemCount:7,
                        itemBuilder:(BuildContext context,int index){
                          return Container(
                            height:50,
                            width:100,
                            color:Colors.green,
                            margin:EdgeInsets.all(5),
                          child:                        
                          Image.network(
                            images[index],
                            ),
                          );
                        }
                      ),
                  ),
                ]
              ),
            ),
      ),
    );
  }
}
