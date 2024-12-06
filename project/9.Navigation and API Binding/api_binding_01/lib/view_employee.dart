import 'dart:developer';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class viewEmployee extends StatefulWidget {
  const viewEmployee({super.key});

  @override
  State createState() => _viewEmployee();
}

class _viewEmployee extends State {
  List<dynamic> empData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Testing Api"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
       body:ListView.builder(
        itemCount:empData.length,
        itemBuilder: (context,index){
        return Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children:[
              Text(empData[index]['employee_name']),
              const SizedBox(width:10),
              Text("${empData[index]['employee_salary']}"),
              const SizedBox(width:10),
              Text("${empData[index]['employee_age']}")
            ]
          
        );
       }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                getEmployeeData();
              },
            );
          },
          child: const Icon(Icons.add, color: Colors.blue),
        ));
  }

  void getEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");

    http.Response response = await http.get(url);
    log(response.body);

    var responseData = json.decode(response.body);

    setState(() {
      empData = responseData['data'];
    });

    // for(int i=0;i<empData.length;i++){
    //   log("$empData");
    //   log(empData);
    // }
  }
}
