import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' ;
import 'package:sqflite_3/todo_model.dart';

dynamic todoDatabase11;

void main()async {
  log("before insertdata");

  WidgetsFlutterBinding.ensureInitialized();
    todoDatabase11 = openDatabase(
    join(await getDatabasesPath(), "TodoList11.db"),
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

  // TodoTasks obj1 = TodoTasks(
  //   taskId:1,
  //   title:"sagar",
  //   description:"Hello my name is sagar",
  //   date:"21/02/2004"
  // );
  // log("before insertdata");
  // insertData(obj1);
  // print(await getData());

  // TodoTasks obj2 = TodoTasks(
  //   taskId:2,
  //   title:"Ganesh",
  //   description:"Ganesh is my bhacha",
  //   date:"01/07/2016"
  // );
  // log("before insertdata");
  // insertData(obj1);
  // print(await getData());

  // deleteTask(obj1.taskId!);
  // print(await getData());
  // deleteTask(obj2.taskId!);
  // print(await getData());
  // obj1=TodoTasks(date: "34.34.34",
  //   title:"This is updated",
  //   description:"THis is updated description"
  // );
  // updateTask(obj1);

  print(await getData());

  TodoTasks obj4 = TodoTasks(
    taskId:1,
    title:"This is update title",
    description:"This is updated description",
    date:"01/05/3453",
  );
  updateTask(obj4);
  print(await getData());



  runApp(const MainApp());

}

Future<void> updateTask(TodoTasks obj)async{
    final localDB = await todoDatabase11;
  log("in update task func");

   await localDB.update(
    "TodoTable",
    obj.todoMap(),
    where: 'taskId=?',
    whereArgs: [obj.taskId],
  );
}

Future deleteTask(TodoTasks obj)async{
  final localDB =await todoDatabase11;

 await localDB.delete(
    "TodoTable",
    where:"taskId=?",
    whereArgs:[obj.taskId],
  );

}

Future<void> insertData(TodoTasks obj)async{
  log("in insert data");
    final localDB = await todoDatabase11;
    await localDB.insert(
      "TodoTable",
      obj.todoMap(),
      conflictAlgorithm:ConflictAlgorithm.replace,
    );
}

Future<List<TodoTasks>> getData()async{
  final localDB = await todoDatabase11;
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

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text('Hello World!'),
        ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){

        },
        child:const Icon(Icons.add)
        )
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// //import 'package:flutter/rendering.dart';
// import "package:sqflite/sqflite.dart";
// import "package:path/path.dart";

// class Zomato {
//   int? orderNo;
//   final String custName;
//   final String hotelName;
//   final String food;
//   final double bill;
//   Zomato({
//     this.orderNo,
//     required this.custName,
//     required this.hotelName,
//     required this.food,
//     required this.bill,
//   });
//   Map<String, dynamic> zomatoMap() {
//     return {
//       'custName': custName,
//       'hotelName': hotelName,
//       'food': food,
//       'bill': bill
//     };
//   }

//   @override
//   String toString() {
//     return '{orderNo:$orderNo,custName:$custName,hotelName:$hotelName,food:$food,bill:$bill }';
//   }
// }

// dynamic database;
// Future<void> insertOrderData(Zomato obj) async {
//   final localDB = await database;

//   await localDB.insert(
//     "OrderFood",
//     obj.zomatoMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// }

// Future<List<Zomato>> getOrderData() async {
//   final localDB = await database;

//   List<Map<String, dynamic>> orderMap = await localDB.query("OrderFood");

//   return List.generate(orderMap.length, (i) {
//     return Zomato(
//       orderNo: orderMap[i]['orderNo'],
//       custName: orderMap[i]['custName'],
//       hotelName: orderMap[i]['hotelName'],
//       food: orderMap[i]['food'],
//       bill: orderMap[i]['bill'],
//     );
//   });
// }

// //delete
// Future<void> deleteOrderData(int data) async {
//   final localDB = await database;

//   await localDB.delete(
//     "OrderFood",
//     where: "orderNo = ?",
//     whereArgs: [data],
//   );
// }

// //update
// Future<void> updateOrderData(Zomato obj) async {
//   final localDB = await database;


//   await localDB.update(
//     "OrderFood",
//     obj.zomatoMap(),
//     where: 'orderNo=?',
//     whereArgs: [obj.orderNo],
//   );
// }

// void main() async {

//   WidgetsFlutterBinding.ensureInitialized();
//   database = openDatabase(
//     join(await getDatabasesPath(), "BlinkDB.db"),
//     version: 1,
//     onCreate: (db, version) async {
//       await db.execute('''
// CREATE TABLE OrderFood(
// orderNo INTEGER PRIMARY KEY,
// custName TEXT,
// hotelName TEXT,
// food TEXT,
// bill REAL
// )
// ''');
//     },
//   );
// //Insert
//   Zomato order1 = Zomato(
//       custName: "Ashish",
//       hotelName: "Ganesh Bhel",
//       food: "Bhel,Ragda Patice",
//       bill: 530.50);
//   insertOrderData(order1);
//   Zomato order2 = Zomato(
//       custName: "Kanha",
//       hotelName: "SP Biryani",
//       food: "Biryani,Rassa",
//       bill: 830.00);
//   insertOrderData(order2);
// // Zomato order3 = Zomato(
// // custName: "Badhe",
// // hotelName: "SP Biryani",
// // food: "Biryani,Rassa",
// // bill: 830.00);
// // insertOrderData(order3);

//   print(await getOrderData());
// // deleteOrderData(3);
// // print(await getOrderData());
// // order1 = Zomato(
// // orderNo: order1.orderNo,
// // custName: order1.custName,
// // hotelName: order1.hotelName,
// // food: "${order1.food}PaniPuri",
// // bill: order1.bill + 150.00,
// // );
// // updateOrderData(order1);
// // print(await getOrderData());

// deleteOrderData(1);
// deleteOrderData(2);
// deleteOrderData(3);
// deleteOrderData(4);
// deleteOrderData(5);

//   print(await getOrderData());

// }
