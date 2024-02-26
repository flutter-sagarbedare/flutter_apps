import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
        // title:const Text("Quiz App");

        return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home:QuizUi(),
        );

  }
}
class QuizUi extends StatefulWidget{
    const QuizUi({super.key});

  @override
  State createState() => _QuizUiState();
}
class _QuizUiState extends State{
   int _queCounter = 1;
   
    void _next(){
        print("hotay");
        if(_queCounter >= 10){
              
              
        }else{
        setState(() {
          _queCounter++;
        });
        }
  }
    @override 
    Widget build(BuildContext context){
      return Scaffold(
            appBar:AppBar(
              centerTitle: true,
              title: const Text(
                "QuizApp",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:FontWeight.w900,
                ),

              ),

            ),
          
          body: 
              Column(
                    // mainAxisAlignment: ,
                   children:[ 
                   const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Question ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                          ),
                        ),
                        Text(" $_queCounter / 10",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                          ),
                        ),
                       
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const Text("Who is Your Favourite Female Singer?",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                   const SizedBox(
                    height: 30,
                   ),
                   ElevatedButton(
                    onPressed: (){
                      color:Colors.green,
                    },
                     child:
                     const Text("1.  Arya Ambekar") 
                     ),
                   const SizedBox(
                    height: 30,
                   ),
                   ElevatedButton(
                    onPressed: (){},
                     child:
                     const Text("2.  Vaishali made") 
                     ),
                   const SizedBox(
                    height: 30,
                   ),
                   ElevatedButton(
                    onPressed: (){},
                     child:
                     const Text("3.  Bela Shende ") 
                     ),
                   const SizedBox(
                    height: 30,
                   ),
                   ElevatedButton(
                    onPressed: (){},
                     child:
                     const Text("4.  Priyanka Barve") 
                     ),

                    const SizedBox(
                      height: 100,
                    ),
                    // const SizedBox(
                    //   child:
                      
                    // Text("Test Completed !!",
                    // style:TextStyle(
                    //   fontSize: 30,
                    //   fontWeight: FontWeight.w900,
                    //   color: Colors.green,
                    // ) ,),
                    // ),
                   ],
                   
              ),
              floatingActionButton: FloatingActionButton(onPressed:  _next,  
                         
                    child: const Text("Next"),
              ),
              
      );
    }
}