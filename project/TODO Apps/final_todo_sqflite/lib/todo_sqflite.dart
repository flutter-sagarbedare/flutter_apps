
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'TodoUi.dart';
import 'main.dart';
import 'dart:developer';

dynamic tasksDatabase;



Future TodoDatabase()async{
     tasksDatabase = openDatabase(
    join(await getDatabasesPath(), "databaseTaskList.db"),
    version:1,
    onCreate:(db,version){
      db.execute(
        '''
        CREATE TABLE TodoTable(
        taskId INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        description TEXT,
        date TEXT
        )
        '''
      );
    },
  );
}

Future<void> updateTask(TodoTasks obj)async{
    final localDB = await tasksDatabase;
  log("in update task func");

   await localDB.update(
    "TodoTable",
    obj.todoMap(),
    where: 'taskId=?',
    whereArgs: [obj.taskId],
  );
}

Future deleteTask(TodoTasks obj)async{
  final localDB =await tasksDatabase;

 await localDB.delete(
    "TodoTable",
    where:"taskId=?",
    whereArgs:[obj.taskId],
  );
   getData();

}

Future<void> insertData(TodoTasks obj)async{
  log("in insert data");
    final localDB = await tasksDatabase;
    await localDB.insert(
      "TodoTable",
      obj.todoMap(),
      conflictAlgorithm:ConflictAlgorithm.replace,
    );
    getData();
}

Future<List<TodoTasks>> getData()async{
  final localDB = await tasksDatabase;
  List<Map<String,dynamic>> todoList = await localDB.query("TodoTable");

  return List.generate(todoList.length, (i){
      return TodoTasks(
        taskId:todoList[i]['taskId'],
        title:todoList[i]['title'],
        description:todoList[i]['description'],
        date:todoList[i]['date']
      );
  });
}


