import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child:
          Padding(
            padding:EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              border:Border.all(color:Color.fromARGB(255, 203, 142, 138)),
              borderRadius:BorderRadius.all(
                Radius.circular(10),
              ),
              color:Color.fromARGB(1000,250, 232, 232),
            ),
            // color: Colors.red,
            height: 120,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(40)),
                        // border:Border.all(color:Colors.red),
                        color:Colors.red
                      ),
                        margin: EdgeInsets.only(top: 12, left: 10),
                        height: 70,
                        width: 70,
                        child:Icon(
                            Icons.add_a_photo,
                        ),
                        ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(children: [
                        SizedBox(height: 10),
                        const Text("Heading og First Task and other",
                        style:TextStyle(
                          fontSize:16,
                          fontWeight:FontWeight.w600,
                        )
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                            "This is the task i have to complete today at any cost. So Prabhu give me Power ans energy to complete these tasks. and achieve my goals in My Life. Jay hari",
                            style:TextStyle(
                              fontWeight:FontWeight.w500
                            )
                            ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(height:5),
                Row(
                  children:[
                      SizedBox(
                        width:10,
                      ),
                      const Text("10 Mar 2024"),
                      Spacer(
                            flex:21
                      ),
                      Icon(
                        Icons.edit,
                      ),
                      SizedBox(width:10),
                      Icon(
                        Icons.delete,
                      ),
                      SizedBox(width:10,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
