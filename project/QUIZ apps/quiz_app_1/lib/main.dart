import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Quiz App",
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  bool questionScreen = true;
  int selectedAnswerIndex = -1;
  int questionNo = 0;
  int noOfCorrectAnswers=0;

  MaterialStateProperty<Color?> vcheckAnswer(int buttonIndex) {
    if(selectedAnswerIndex != -1){
        if(buttonIndex == allQuestions[questionNo]["answer"]){          
            return const MaterialStatePropertyAll(Colors.green);
          }else if(buttonIndex == selectedAnswerIndex){
            return const MaterialStatePropertyAll(Colors.red);
            }else{
                return const MaterialStatePropertyAll(null);
            }   
    }else{
        return const MaterialStatePropertyAll(null);
    }
 }

 void validateCurrentPage(){
        if(selectedAnswerIndex == -1){
          return;
        }
        if(selectedAnswerIndex == allQuestions[questionNo]["answer"]){
          noOfCorrectAnswers += 1;
        }
        if(selectedAnswerIndex != -1){
          if(questionNo == allQuestions.length -1){
            setState((){
            questionScreen = false;
            });
            return;
          }
        }
        if(selectedAnswerIndex != 0){
          selectedAnswerIndex = -1;
          setState(
            (){
              questionNo += 1;
            }
          );
        }
 }

  List<Map> allQuestions = [
    {
      "question": "Who is Founder of C Language?",
      "options": [
        "Steve jobs",
        "Elon musk",
        "Denis Ritchie",
        "Bjarne Stroustrup"
      ],
      "answer": 2,
    },
    {
      "question": "Who is founder of Microsoft?",
      "options": ["Steve jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answer": 2,
    },
    {
      "question": "Who is founder of Amazon?",
      "options": ["Steve jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answer": 1,
    },
    {
      "question": "Who is founder of Tesla?",
      "options": ["Steve jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "answer": 3,
    },
    {
      "question": "Who is founder of Bhaarat Pay?",
      "options": ["Steve jobs", "Ashneer Grover", "Bill Gates", "Elon Musk"],
      "answer": 1,
    },
  ];

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
        ),

        body: Column(

          
          children: [


            const SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "${questionNo + 1} / ${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),




            const SizedBox(
              height: 30,
            ),


            SizedBox(
              width: 290,
              height: 50,
              child: Text(
                allQuestions[questionNo]["question"],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),



            const SizedBox(
              height: 30,
            ),


            SizedBox(
              height: 40,
              width: 210,
              child:
            ElevatedButton(
              style:  ButtonStyle(
                backgroundColor: checkAnswer(0),
              ),
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 0;
                  });
                }
              },
              child: Text(
                "A: ${allQuestions[questionNo]["options"][0]}",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            ),


            const SizedBox(
              height: 20,
            ),

          SizedBox(
              height: 40,
              width: 210,
              child:
            ElevatedButton(
               style:  ButtonStyle(
                backgroundColor: checkAnswer(1),
              ),
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 1;
                  });
                }
              },
              child: Text(
                "B: ${allQuestions[questionNo]["options"][1]}",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
          ),
            const SizedBox(
              height: 20,
            ),


           SizedBox(
              height: 40,
              width: 210,
              child:
            ElevatedButton(
             style:  ButtonStyle(
                backgroundColor: checkAnswer(2),
              ),
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 2;
                  });
                }
              },
              child: Text(
                "C: ${allQuestions[questionNo]["options"][2]}",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            ),
            const SizedBox(
              height: 20,
            ),



          SizedBox(
              height: 40,
              width: 210,
              child:
            ElevatedButton(
              style:  ButtonStyle(
                backgroundColor: checkAnswer(3),
              ),
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 3;
                  });
                }
              },
              child: Text(
                "D: ${allQuestions[questionNo]["options"][3]}",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
          ),
            const SizedBox(
              height: 20,
            ),




          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          validateCurrentPage();
          },
          child: const Icon(
            Icons.send_rounded,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("QuizApp",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
          ),
        ),
        body: Center(
          child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children:[      
       Image.network("https://img.freepik.com/premium-vector/winner-trophy-cup-with-ribbon-confetti_51486-122.jpg",
          height: 400,
          width: 380,
          ),
          
          const SizedBox(height: 7,),
          const Text(
            "Congratulations!!!",
            style: TextStyle(
              fontSize:40,
              fontWeight: FontWeight.w800,
              color:Colors.green,
            ),
          ),
          const SizedBox(height: 10,),
          const Text("You have completed the Quiz",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 10,),

          Text("$noOfCorrectAnswers /${allQuestions.length}",
            style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
          )),    
          const SizedBox(height: 10,),


           SizedBox(
            height: 40,
          width:140,
          child:
          ElevatedButton(
            onPressed:(){
              noOfCorrectAnswers=0;
              selectedAnswerIndex = -1;
              questionScreen=true;
              questionNo = 0;
              setState(() {
                
              });
            } ,
             child:
             const Text("Reset",
                style: TextStyle(
                  color:Colors.yellow,
                  fontSize:30,
                  fontWeight:FontWeight.w400,
                  // color:Colors.orange                  
                ),
             ) 
             ),
          ),
          ],
        ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
