import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:my_todo_app/todo_sqflite.dart';
import 'package:my_todo_app/main.dart';
import 'package:my_todo_app/login.dart';


class TodoUi extends StatefulWidget {
 final String? userName;
  const TodoUi({super.key,this.userName});

  @override
  State<TodoUi> createState() => _TodoUiState(userName);
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
      title: "Lorem Ipsum is simply dummy industry",
      description:
          "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem.",
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

  void clearController() {
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
                  const Text("Date"),

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

  void deleteTask(int no) {}

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
                    padding: const EdgeInsets.only(top: 10),
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Slidable(
                        key: ValueKey(index),
                        closeOnScroll: true,
                        endActionPane: ActionPane(
                            extentRatio: 0.2,
                            motion: const StretchMotion(),
                            children: [
                              Expanded(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(height: 16),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            89, 57, 241, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 13,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            89, 57, 241, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              )),
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(top: 12,bottom:0,),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.only(
                                top: 12, left: 7, right: 6, bottom: 12),
                            height: 112,
                            width: MediaQuery.of(context).size.width,
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
                            child:
                                //  Column(
                                //   children: [
                                //     const SizedBox(height: 4),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Container(
                                      height: 72,
                                      width: 72,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'images/todo_icons.png',
                                        scale:1,
                                        // height: 65,
                                        // width: 66,
                                      )),
                                      const SizedBox(width:15),
                                  Column(
                                    mainAxisSize:MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                     SizedBox(
                                        // width:double.,
                                        child:
                                         Text(
                                            tasks[index].title,
                                            maxLines: 2,         
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),
                                         ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        width:235,
                                        child:
                                         Text(
                                            tasks[index].description,
                                            maxLines: 2,                                           
                                            style: GoogleFonts.inter(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                            ),
                                         ),
                                      ),
                                        
                                      
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(tasks[index].date,
                                          style: GoogleFonts.inter(
                                            fontSize: 10,
                                          )),
                                    ],
                                  ),
                                ]),
                            //   ],
                            // ),
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