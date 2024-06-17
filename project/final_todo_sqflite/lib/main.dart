
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'TodoUI1.dart' ;
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic loginDatabase;
dynamic tasksDatabase;


void main()async {
 WidgetsFlutterBinding.ensureInitialized();
 
  runApp(const MainApp());
  WidgetsFlutterBinding.ensureInitialized();

  // String path = await getDatabasesPath();
  // log("DevicePath == $path");

  loginDatabase = openDatabase(
      join(await getDatabasesPath(), "SignUpData2.db"),
      version: 1, 
      onCreate: (db, version) {
    db.execute('''CREATE TABLE SignUp(
          userName TEXT PRIMARY KEY,
          userId TEXT,
          password TEXT
          )''',
    );
  },);

  
}

Future<void > TodoDatabase() async{
      tasksDatabase = openDatabase(
          join(await getDatabasesPath(),"TodoList4.db"),
          version:2,
          onCreate:(db3,version)async{
            await db3.execute(''' CREATE TABLE TodoTasks(
                taskId INTEGER PRIMARY KEY AUTOINCREMENT,
                title TEXT ,
                description TEXT,
                date TEXT
                )''');
          }
        );
        getTodoTask();
}


Future insertTask(TodoTasks obj) async {
  log('insertTask function');
  final localTodoDB = await tasksDatabase;

  await localTodoDB.insert(
    'TodoTasks',
       obj.todoTaksMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
      );
  

  log(obj.title);
  log(obj.description);
  log(obj.date);
}
int? getNoOfTasks({int? value}){
  log("length is $value");
  return value;
}

  Future<void> deleteTask(TodoTasks obj)async{
    final localDB = await tasksDatabase;
    await localDB.delete(
      'TodoTasks',
      where:'taskId=?',
      whereArgs:[obj.taskId],
    );
  }
/*
Future<void> updateTask(TodoModel todoobj)async{
  final localDB=await database;
  await localDB.update(
    'TodoInfo',
     todoobj.toMap(),
     where:'taskId=?',
     whereArgs:[todoobj.taskId],
  );
 // todoobj.isChecked=!todoobj.isChecked;
}
 */
  Future<void> updateTask1(TodoTasks obj)async{
      final localDb =await tasksDatabase;
      log("in update databaase func");
      log(obj.title);
      log(obj.description);
      log(obj.date);
      await localDb.update(
        'TodoTasks',
        obj.todoTaksMap(),
        where:'taskId=?',
      whereArgs:[obj.taskId],
      );

      await getTodoTask();
  // List<Map<String, dynamic>> listTodoTasks = await localDb.query("TodoTasks");
  // print( listTodoTasks);
       
  }


Future<List<TodoTasks>> getTodoTask() async {
  final localDB4 = await tasksDatabase;
  // log("In get todo task function");

  List<Map<String, dynamic>> listTodoTasks = await localDB4.query("TodoTasks");
  print(await listTodoTasks);
  return List.generate(listTodoTasks.length, (i){
      return TodoTasks(
        title:listTodoTasks[i]['title'],
        description:listTodoTasks[i]['description'],
        date:listTodoTasks[i]['date'],
      );    
  });
  
  // return listTodoTasks;
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'named routes',
      initialRoute:'/',
      routes: {
        // '/':(context) => const LoginSignUp(),
        // '/second':(context) =>  TodoUi(userName:finalName),
      },
      // home: TodoUi(userName:"sagar"),
      home: LoginSignUp(),
    );
  }
}

