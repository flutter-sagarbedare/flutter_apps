
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'TodoUI1.dart';
import 'dart:developer';

dynamic loginDatabase;

class TODOTasks{


}
// class SignUp{
//    final String userName;
//    final String userId;
//    final String password;
    

//   const SignUp({
//     required this.userName,
//     required this.userId,
//     required this.password,
//   });

//   Map<String,dynamic> signUpMap(){
//     return {
//       'userName':userName,
//       'userId':userId,
//       'password':password,
//     };
    
//   } 
// }
//  Future insertLoginData(SignUp obj)async{
//   final localDB = await loginDatabase;

//   await localDB.insert(
//     'SignUpUser',
//     obj.signUpMap(),
//     conflictAlgorithm:ConflictAlgorithm.replace
//   );

//   log(obj.userName);
//   log(obj.userId);
//   log(obj.password);
//  }

// Future<List<SignUp>> getSignUpData() async{
//   final localDB = await loginDatabase;

//   List<Map<String,dynamic>> listUsersData = await localDB.query("SignUpUser");  

//   return List.generate(
//     listUsersData.length,
//     (i){
      
 
//       return SignUp(
//         userName:listUsersData[i]['userName'],
//         userId:listUsersData[i]['userId'],
//         password:listUsersData[i]['password'],
//       );
//     }
//   );
// }

