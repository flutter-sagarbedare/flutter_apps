import 'dart:js_interop_unsafe';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'login.dart';
import 'main.dart';

class TodoUi extends StatefulWidget {
  final String? name;
  const TodoUi({super.key, this.name});

  @override
  // ignore: no_logic_in_create_state
  State<TodoUi> createState() => _TodoUiState(name);
}

class TodoTasks {
  final String title;
  final String description;
  final String date;
  const TodoTasks(
      {required this.title, required this.description, required this.date});
}

class _TodoUiState extends State<TodoUi> {
  String? username;

  _TodoUiState(this.username);

  List<TodoTasks> tasks = [
    TodoTasks(
      title: "",
      description: "This is Description",
      date: "21/02/2004",
    ),
  ];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void createTask() {
    tasks.add(TodoTasks(
      title: titleController.text,
      description: descriptionController.text,
      date: dateController.text,
    ));
    Navigator.of(context).pop();
    clearController();
  }

  void clearController(){
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }
  void myBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                "Create To Do ",
                style: GoogleFonts.quicksand(
                    fontSize: 27, fontWeight: FontWeight.w700),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text("Title"),
                  const SizedBox(height: 10),
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                    ),
                  ),
                  Text("Description"),
                  const SizedBox(height: 10),

                  TextField(
                    controller: descriptionController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                    ),
                  ),

                  // const SizedBox(height: 10),

                  // Text("Enter Password"),
                  // const  SizedBox(height:10),
                  const Text("date"),

                  TextField(
                      controller: dateController,
                      readOnly: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        suffixIcon: const Icon(Icons.calendar_month),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2027),
                        );
                        String date = DateFormat.yMMMd().format(pickedDate!);
                        setState(() {
                          dateController.text = date;
                        });
                      }),
                  // const SizedBox(height: 6),

                  const SizedBox(height: 15),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                      child: Container(
                          width: 400,
                          height: 49,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(31, 65, 187, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                              child: Text(
                            "Submit",
                            style: GoogleFonts.quicksand(
                                fontSize: 20, color: Colors.white),
                          ))),
                      onTap: () {
                        setState(() {
                          createTask();
                        });
                      }),
                  const SizedBox(height: 20),
                ],
              ),
            ]),
          );
        });
  }

  void deleteTask(int no){
    
  }

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
            padding: const EdgeInsets.only(top: 20),
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
                  color: Color.fromRGBO(255, 255, 255, 1),
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
                        padding:EdgeInsets.all(10),
                        child:Container(
                          // margin:EdgeInsets.all(5),
                          height:110,
                          width:MediaQuery.of(context).size.width,
                          decoration:BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius:BorderRadius.all(
                              Radius.circular(10)
                            ),
                            boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.08),
                                    blurRadius: 20,
                                    spreadRadius: 20,
                                  ),
                                ],
                          ),
                          child:Column(
                            children:[
                              const SizedBox(height:4),
                              Row(
                                  children:[
                                    const SizedBox(width:5),
                                    Icon(Icons.circle,
                                    size:80,
                                    ),
                                    Column(
                                      children:[
                                        Text(tasks[index].title,
                                        style:GoogleFonts.inter(
                                            fontSize:22,
                                        )
                                        ),
                                        Text(tasks[index].description,
                                         style:GoogleFonts.inter(
                                            fontSize:17,
                                        ),
                                        ),
                                      ],
                                    ),

                                  ]
                              ),
                              Row(
                                children:[
                                  const SizedBox(width:10,),
                                  Text(tasks[index].date,
                                  style:GoogleFonts.inter(
                                    fontSize:12,
                                  )
                                  ),
                                  Spacer(
                                    flex:5,
                                  ),
                                  Icon(Icons.edit,
                                  size:22,
                                  ),
                                  const SizedBox(width:5,),
                                  GestureDetector(
                                    child:
                                  Icon(
                                    Icons.delete,
                                    size:22,
                                  ),
                                  onTap:(){
                                    deleteTask(index);
                                  }
                                  ),
                                  const SizedBox(width:10,)
                                ]
                              ),
                              const SizedBox(height:0),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myBottomSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*
return Padding(
                          padding: const EdgeInsets.only(
                              // top: 0,
                              left: 10,
                              right: 10),
                          child: Column(children: [
                            Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.08),
                                    blurRadius: 20,
                                    spreadRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(children: [
                                Row(children: [
                                  const SizedBox(width: 16),
                                  const Icon(Icons.circle, size: 55.5),
                                  const SizedBox(width: 20),
                                  Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      Text(
                                        tasks[index].title,
                                        style: GoogleFonts.inter(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          tasks[index].description,
                                          style: GoogleFonts.inter(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                                Row(
                                  children: [
                                    Text(tasks[index].date),
                                  ],
                                )
                              ]),
                            ),
                            const SizedBox(height: 10)
                          ]
                          )
                          );
 */