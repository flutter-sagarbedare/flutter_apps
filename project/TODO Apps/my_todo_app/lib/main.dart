
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'TodoUi.dart';
import 'TodoUI1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: TodoUi(name:"sagar"),
      home: LoginSignUp(),
    );
  }
}


class TodoUI extends StatefulWidget {
  const TodoUI({super.key});

  @override
  State createState() => _TodoUIState();
}

class _TodoUIState extends State<TodoUI> {
 
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner:false,
        // home: LoginSignUp(),
     
    );  
  }
}


//  Scaffold(
//         backgroundColor:Color.fromRGBO(111, 81, 255, 1),
//           body:,
//
// Container(
//             child: Column(
//               children:[
//                   Text("Good Morning",
//                   style:GoogleFonts.quicksand(
//                       fontSize:22,
//                       fontWeight:FontWeight.w500,
//                       color:const Color.fromRGBO(255, 255, 255, 1),
//                   ),
//                   )
//               ],
//             ),
//           ),
// );

