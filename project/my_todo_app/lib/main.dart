
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'TodoUi.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoUi(name:"sagar"),
    );
  }
}


// class TodoUi extends StatefulWidget {
//   const TodoUi({super.key});

//   @override
//   State createState() => _TodoUiState();
// }

// class _TodoUiState extends State<TodoUi> {
 
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner:false,
//       home: LoginSignUp(),
     
//     );  
//   }
// }


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

