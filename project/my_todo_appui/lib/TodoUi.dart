import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';
import 'main.dart';

class TodoUi extends StatefulWidget {
   String? name;
   TodoUi({super.key, this.name});

  @override
  // ignore: no_logic_in_create_state
  State<TodoUi> createState() => _TodoUiState(name);
}
class TodoTasks {
  final String title;
  final String description;
  final String date;
  const TodoTasks({required this.title,required this.description,required this.date});
}
class _TodoUiState extends State<TodoUi> {
  String? username;

  _TodoUiState(this.username);

  List<TodoTasks> tasks = [
    const TodoTasks(
      title:"Title",
      description:"This is Description",
      date:"21/02/2004",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60, left: 30),
            height: 100,
            // color:Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning",
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  username!,
                  style: GoogleFonts.quicksand(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            padding:const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 160,
            decoration: const BoxDecoration(
              color: Color.fromARGB(160, 255, 255, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
              ),
            ),
            child: Column(children: [
              Text(
                "CREATE TO DO LIST",
                style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(
                  top: 25,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255,255,255,1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                height: MediaQuery.of(context).size.height - 231,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    padding: const EdgeInsets.only(top: 40),
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.only(
                              // top: 0, 
                              left: 10,
                               right: 10),
                          child: Container(
                              // margin: const EdgeInsets.only(top: 0),
                              child: Column(children: [
                                Container(
                                  height: 100,
                                  decoration:const BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    boxShadow:[
                                      BoxShadow(
                                        color:Color.fromRGBO(0, 0, 0, 0.08),
                                        blurRadius:20,
                                        spreadRadius:20,
                                      ),
                                    ],
                                  ),
                                    child:Row(
                                      children:[
                                        const SizedBox(width:16),
                                      const Icon(
                                        Icons.circle,
                                        size:55.5
                                      ),
                                      const SizedBox(width:20),
                                      Column(children: [
                                      const SizedBox(height:20),
                                      Text(tasks[0].title,
                                      style:GoogleFonts.inter(
                                        fontSize:18, 
                                        fontWeight:FontWeight.w500,
                                      ),
                                      ),
                                      ],
                                     ),
                                    ]
                                    ),
                                ),
                                const SizedBox(height: 10)
                              ])));
                    }),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
