import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class QuestionModel {
  final String? question;
  final List<String>? options;
  final int? answer;

  const QuestionModel({this.question, this.options, this.answer});
}

class _QuizAppState extends State {
  bool startScreen = true;
  bool qScreen = true;
  int qIndex = 0;
  int selectedAnswerIndex = -1;
  int numOfCorrectAnswer = 0;
  // int noOfAnswer = 0;


  List Questions = [
    const QuestionModel(
      question: "Which Operating System is Made By Microsoft?",
      options: ["Macintoish", "Android", "Windows", "Linux"],
      answer: 2,
    ),
    const QuestionModel(
      question: "Who created Linux?",
      options: ["Linus Torwalds", "Bill Gates", "Denis Ritchie", "Steve Jobs"],
      answer: 0,
    ),
    const QuestionModel(
      question: "Who is Founder of C++ Language?",
      options: [
        "Denis Ritchie",
        "Elon Musk",
        "Bjarne Stroustrup",
        "Steve Jobs"
      ],
      answer: 2,
    ),
    const QuestionModel(
      question: "What is internet?",
      options: [
        "A network of interconnected local area networks",
        " A collection of unrelated computers",
        "Interconnection of wide area networks",
        "A single network"
      ],
      answer: 2,
    ),
    const QuestionModel(
      question: "What is an operating system?",
      options: [
        "interface between the hardware and application programs",
        "collection of programs that manages hardware resources",
        "system service provider to the application programs",
        "all of the mentioned?"
      ],
      answer: 3,
    ),
    const QuestionModel(
      question:
          "In Operating Systems, which CPU scheduling algorithms are used?",
      options: [
        "Priority",
        "Round Robin",
        "Shortest Job First",
        "All of the mentioned"
      ],
      answer: 3,
    ),
    const QuestionModel(
      question: " What is the full form of CPU?",
      options: [
        "Computer Processing Unit",
        "Computer Principle Unit",
        "Central Processing Unit",
        "Control Processing Unit"
      ],
      answer: 2,
    ),
    const QuestionModel(
      question:
          "To access the services of the operating system, the interface is provided by the ___________",
      options: ["Library", "System calls", "Assembly instructions", "API"],
      answer: 1,
    ),
    const QuestionModel(
      question: "Which of the following is not a characteristic of a computer?",
      options: ["Versatility", "Accuracy", "Diligence", "I.Q."],
      answer: 0,
    ),
    const QuestionModel(
      question: "Which Language is used for developing Linux?",
      options: ["JavaScript", "C", "Python", "Java"],
      answer: 1,
    ),
  ];

  void doValidate() {
    if (selectedAnswerIndex != -1) {
      if (qIndex >= Questions.length - 1) {
        setState(() {
          qScreen = false;
          // noOfAnswer=0;
        });
      }
    }

    if (selectedAnswerIndex == Questions[qIndex].answer) {
      setState(() {
        numOfCorrectAnswer += 1;
        //  noOfAnswer += 1;
      });
    }
    if (selectedAnswerIndex >= 0) {
      selectedAnswerIndex = -1;
      setState(() {
        qIndex++;
      });
    }
  }

  MaterialStateProperty<Color?>? checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == Questions[qIndex].answer) {
        // numOfCorrectAnswer += 1;
        // noOfAnswer += 1;
        return const MaterialStatePropertyAll<Color>(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll<Color>(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }


  Scaffold onQuestionScreen() {
    if(startScreen == true){
      return Scaffold(
         backgroundColor: const Color.fromRGBO(35, 40, 61, 1),
        appBar: AppBar(
            title: const Text(
              "Quiz App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            backgroundColor: const Color.fromRGBO(46, 66, 90, 1),
            centerTitle: true),
          body:Padding(
            padding:const EdgeInsets.only(left:40,),
            child:
          Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children:[
              const Text("Are You Ready??",
              style:TextStyle(
                color: Color.fromARGB(160, 245, 245, 245),
                fontSize:30,
                fontWeight:FontWeight.w900,
              ),  
              ),
              const SizedBox(height:20),
              const Text("Click button below to start Quiz",
              style:TextStyle(
              color: Color.fromARGB(160, 245, 245, 245),
              fontSize:22,
              fontWeight:FontWeight.w600,
              ),
              ),
              const SizedBox(height:25),

              SizedBox(
                height:50,
                width:130,
                child:ElevatedButton(
                  onPressed:(){
                    setState((){
                      startScreen= false;
                    });
                  },
                  child:const Text("Start",
                  style:TextStyle(
                    fontSize:20
                  ),
                  ),
                ),
              ),  
            ]
          )
          ),
      );
    }else{
    if (qScreen == true) {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(35, 40, 61, 1),
        appBar: AppBar(
            title: const Text(
              "Quiz App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            backgroundColor: const Color.fromRGBO(46, 66, 90, 1),
            centerTitle: true),
        body: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(160, 245, 245, 245),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "${qIndex + 1} / ${Questions.length}",
                  style: const TextStyle(
                    color: Color.fromARGB(160, 245, 245, 245),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 320,
              height: 70,
              child: Text(
                Questions[qIndex].question,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(238, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 0;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                child: Text(Questions[qIndex].options[0],
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                child: Text(Questions[qIndex].options[1],
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                child: Text(Questions[qIndex].options[2],
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                child: Text(Questions[qIndex].options[3],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        ),
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
            setState(() {
              doValidate();
            });
          
          },
          child: const Icon(
            Icons.send,
            color: Colors.black,
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(35, 40, 61, 1),
        appBar: AppBar(
            title: const Text(
              "Quiz App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            backgroundColor: const Color.fromRGBO(46, 66, 90, 1),
            centerTitle: true),
        body: Center(
          // mainAxisAlignment:MainAxisAlignment.start,
          // crossAxisAlignment:CrossAxisAlignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset('images/troffy.jpg',
                width:380,
                height:400,

              ),
            
              const Text(
                "Congratulations !!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Your Score is :",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                "$numOfCorrectAnswer / ${Questions.length}",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
          

              const SizedBox(
                height: 13,
              ),

              SizedBox(
                height: 50,
                width: 180,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.orange),
                  ),
                  onPressed: () {
                    setState(() {
                      qIndex = 0;
                      numOfCorrectAnswer = 0;
                      // noOfAnswer=0;
                      startScreen=true;
                      qScreen = true;
                      selectedAnswerIndex = -1;
                    });
                  },
                  child: const Text("Reset"),
                ),
              ),
            ],
          ),
        ),
      );
    }
    }
  } 

  @override
  Widget build(BuildContext context) {
    return onQuestionScreen();
  }
}
