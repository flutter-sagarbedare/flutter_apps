import 'dart:developer';

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

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

int? noOfTodo;


class TodoTasks {
  int? taskId;
   String title;
   String description;
  String date;
  TodoTasks(
      {this.taskId,required this.title, required this.description, required this.date});

  Map<String, String> todoMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
    };
  }

  @override
  String toString() {
    return 'title:$title,description:$description,date:$date';
  }
}




GlobalKey<FormState> _todoKey = GlobalKey<FormState>();
GlobalKey<FormState> _todoKey1 = GlobalKey<FormState>();

GlobalKey<FormFieldState> _titleKey = GlobalKey<FormFieldState>();
GlobalKey<FormFieldState> _descriptionKey = GlobalKey<FormFieldState>();
GlobalKey<FormFieldState> _dateKey = GlobalKey<FormFieldState>();

class TodoUi extends StatefulWidget {
  final String userName;
  const TodoUi({required this.userName, super.key});

  @override
  // ignore: no_logic_in_create_state
  State<TodoUi> createState() => _TodoUiState(userName);
}

class _TodoUiState extends State<TodoUi> {
  String? username;

  _TodoUiState(this.username);

  // Future<List<TodoTasks>> tasks = getData();
    @override
    void initState(){
      super.initState();
      Future.delayed(Duration.zero,()async{
        await TodoDatabase();
        await getallTask();
        await getData();
      });
    }

  List tasks = [];

  Future getallTask()async{
    // log("In getalltask function");
    // log("length before = ${tasks.length}");
    List listData = await getData();
    setState((){
      tasks=listData;
    });
    // log("length after = ${tasks.length}");
  }
  // dynamic todoTasks = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  Future createTask() async {
    log("In create task body");
    
    bool titleCheck = _titleKey.currentState!.validate();
    bool descriptionCheck = _descriptionKey.currentState!.validate();
    bool dateCheck = _dateKey.currentState!.validate();

    if (titleCheck && descriptionCheck && dateCheck) {
      if (titleController.text.isNotEmpty &&
          descriptionController.text.isNotEmpty &&
          dateController.text.isNotEmpty) {
        log("in if of create task");
        setState(() {
          TodoTasks tasksObj = TodoTasks(
            title: titleController.text.trim(),
            description: descriptionController.text.trim(),
            date: dateController.text.trim(),
          );
          insertData(tasksObj);
          // dynamic obj2= getData();
          // log("$obj2");

          Navigator.of(context).pop();
        });
      }
    } else {
      // log("in else of create task");
    }
          clearController();
    
    log(tasks.toString());
    
  }
  void updateTask1(TodoTasks obj){
         log("in update task in todo .dart");
        titleController.text = obj.title;
        descriptionController.text = obj.description;
        dateController.text = obj.date;
         myBottomSheet(true,obj);
    
  }
    Future pushUpdate(TodoTasks obj)async{
       obj.title=titleController.text;
      obj.description=descriptionController.text;
      obj.date=dateController.text;
      await  updateTask(obj);
      Navigator.of(context).pop();
      await getallTask();
      setState((){});
   }

  
 

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  String? validateTitle(value) {
    // log('in validate title');
    if (value == null || value.isEmpty) {
      return "Please Enter Title";
    } else {
      return null;
    }
  }

  String? validateDescription(value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Description";
    } else {
      return null;
    }
  }

  String? validateDate(value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Date";
    } else {
      return null;
    }
  }

 

  dynamic myBottomSheet(bool isEdit,[TodoTasks? obj]) {
    log("in bottom sheet function ");
    if(isEdit==false){
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Form(
            key: _todoKey,
            child: Padding(
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
                    const Text("Title"),
                    const SizedBox(height: 10),
                    TextFormField(
                      key: _titleKey,
                      validator: validateTitle,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: titleController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                      ),
                    ),
                    const Text("Description"),
                    const SizedBox(height: 10),

                    TextFormField(
                      key: _descriptionKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: validateDescription,
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

                    TextFormField(
                        key: _dateKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: validateDate,
                        controller: dateController,
                        readOnly: true,
                        decoration: const InputDecoration(
                          hintText: "DD/MM/YY",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          suffixIcon: Icon(Icons.calendar_month),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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

                            }
                          );
                        }),
                    const SizedBox(height: 20),
                  ],
                ),
              ]),
            ),
          );
        });
    }else{
        return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Form(
            key: _todoKey1,
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text(
                  "Update the Task",
                  style: GoogleFonts.quicksand(
                      fontSize: 27, fontWeight: FontWeight.w700),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text("Title"),
                    const SizedBox(height: 10),
                    TextFormField(
                      key: _titleKey,
                      validator: validateTitle,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: titleController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                      ),
                    ),
                    const Text("Description"),
                    const SizedBox(height: 10),

                    TextFormField(
                      key: _descriptionKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: validateDescription,
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

                    TextFormField(
                        key: _dateKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: validateDate,
                        controller: dateController,
                        readOnly: true,
                        decoration: const InputDecoration(
                          hintText: "DD/MM/YY",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          suffixIcon: Icon(Icons.calendar_month),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                                child: Text(
                              "Submit",
                              style: GoogleFonts.quicksand(
                                  fontSize: 20, color: Colors.white),
                            ))),
                        onTap: () {
                          setState(() {
                            // TodoTasks obj2 = TodoTasks(
                             
                            // );
                            // updateTask(obj!);
                              //  getallTask();
                               setState((){

                               pushUpdate(obj!);
                              // updateTask1(obj!);
                               });
                             
                              //  Navigator.of(context).pop();
                              //  clearController();
                            }
                          );
                        }),
                    const SizedBox(height: 20),
                  ],
                ),
              ]),
            ),
          );
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    // log("in build ");
    getallTask();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: SingleChildScrollView(
        child: Column(
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
                      itemCount:tasks.length,
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
                                      onTap: () {
                                        // setState((){
                                          log('in icon button');
                                          updateTask1(tasks[index]);
                                          // updateTask(tasks[index]);
                                        // });
                                        // log("${todoList.length}");
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              89, 57, 241, 1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Icon(
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
                                      onTap: () {
                                        setState((){
                                        deleteTask(tasks[index]);

                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              89, 57, 241, 1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Icon(
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
                            padding: const EdgeInsets.only(
                              top: 12,
                              bottom: 0,
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.only(
                                  top: 12, left: 5, right: 5, bottom: 12),
                              height: 113,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                    Container(
                                        height: 72,
                                        width: 72,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'images/todo_icons.png',
                                          scale: 1,
                                          // height: 65,
                                          // width: 66,
                                        )),
                                    const SizedBox(width: 3),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 310,
                                          child: Text(
                                            // tasks[index].title,
                                            "${tasks[index].title}",
                                            maxLines: 2,
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          width: 235,
                                          child: Text(
                                            tasks[index].description,
                                            maxLines: 2,
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Text(tasks[index].date,
                                            style: GoogleFonts.inter(
                                              fontSize: 9,
                                            )),
                                      ],
                                    ),
                                    // const SizedBox(width:20)
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clearController();
          myBottomSheet(false);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

