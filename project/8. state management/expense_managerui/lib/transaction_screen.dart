import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about_us.dart';
import 'category.dart';
import 'graph.dart';
import 'trash.dart';


class Transaction extends StatefulWidget {
  Transaction({super.key});

  @override
  State<Transaction> createState() => _Transaction_ScreenState();
}

class _Transaction_ScreenState extends State<Transaction> {
  void plusTransaction() {
    Navigator.of(context).pop();
  }

  dynamic addTransaction() {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => Padding(
              padding: EdgeInsets.only(top: 34, left: 23, right: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          hintText: "11-06-2024",
                          suffixIcon: Icon(Icons.calendar_month),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 19),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Amout",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          hintText: "12000",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 19),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Category",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          hintText: "Shopping",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 19),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          hintText: "Bought a T-shirt",
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        plusTransaction();
                      },
                      child: Container(
                        width: 123,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(14, 161, 125, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(67))),
                        child: Center(
                            child: Text(
                          "Add",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return
        // MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   home:
        Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        label: Container(
          height: 46,
          width: 166,
          child: Row(
            children: [
              Image.asset('img/add_icon.png'),
              const SizedBox(
                width: 9,
              ),
              Text(
                'Add Transaction',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
        onPressed: () {
          addTransaction();
        },
        // child:
      ),
      appBar: AppBar(
        // backgroundColor: Colors.red,
        leading: Builder(builder: (context) {
          return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),

        actions: [
          Image.asset(
            'img/search_icon.png',
            width: 26,
          ),
          const SizedBox(
            width: 19,
          ),
        ],
        title: Text(
          "May 27",
          style: GoogleFonts.poppins(
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 17),
                  Text(
                    "Expense Manager",
                    style: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Saves all your Transactions",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
                            const SizedBox(height:26),

          Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();

                  },
                  child: Container(
                    width: 220,
                    height: 45,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(14, 161, 125, 0.15),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      // mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'img/transaction.png',
                          width: 18,
                          height: 17,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Transaction",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                                   const SizedBox(height:26),

              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(context) =>GraphScreen() ,
                    ),
                    );
                    
                  },
                  child: Container(
                    width: 220,
                    height: 45,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(14, 161, 125, 0.15),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      // mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'img/graph.png',
                          width: 18,
                          height: 17,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Graph",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                                    const SizedBox(height:26),

              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(context) =>Category() ,
                    ),
                    );
                    Category();
                  },
                  child: Container(
                    width: 220,
                    height: 45,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(14, 161, 125, 0.15),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      // mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'img/category.png',
                          width: 18,
                          height: 17,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Category",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                                   const SizedBox(height:26),

              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                     Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(context) =>TrashScreen() ,
                    ),
                    );
                    
                  },
                  child: Container(
                    width: 220,
                    height: 45,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(14, 161, 125, 0.15),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      // mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'img/trash.png',
                          width: 18,
                          height: 17,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Trash",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                                    const SizedBox(height:26),

              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                      Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:(context) =>AboutUs() ,
                    ),
                    );
                    
                  },
                  child: Container(
                    width: 220,
                    height: 45,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(14, 161, 125, 0.15),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Row(
                      // mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'img/about_us.png',
                          width: 18,
                          height: 17,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "About us",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                  const SizedBox(height:26),
             

              // GestureDetector(
              //   onTap: () {
              //     Navigator.of(context).pop();
              //   },
              //   child: ListItem(
              //       name: "Transaction",
              //       iconName: "img/transaction.png",
              //       mycontext1: context),
              // ),
              // const SizedBox(height: 26),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.of(context).pop();
              //   },
              //   child: ListItem(
              //       name: "Graphs",
              //       iconName: "img/graph.png",
              //       mycontext1: context),
              // ),
              // const SizedBox(height: 26),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.of(context).pop();
              //   },
              //   child: ListItem(
              //       name: "Category",
              //       iconName: "img/category.png",
              //       mycontext1: context),
              // ),
              // const SizedBox(height: 26),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.of(context).pop();
              //   },
              //   child: ListItem(
              //       name: "Trash",
              //       iconName: 'img/trash.png',
              //       mycontext1: context),
              // ),
              // const SizedBox(height: 26),
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       Navigator.of(context).pop();
              //     });
              //   },
              //   child: ListItem(
              //       name: "About us",
              //       iconName: "img/about_us.png",
              //       mycontext1: context),
              // ),
            ],
          ),
        ]),
      ),
    );

    //           ])
    //       ],
    //     )

    // //   ],
    // ),
    // ),
    // ),
    // );
    // );
  }
}

// class ListItem extends StatefulWidget{
//   final String name;
//   final String iconName;
//   final BuildContext mycontext1;
//   const ListItem({
//     super.key,
//     required this.name,
//     required this.iconName,
//     required this.mycontext1
//   });

//   @override
//   State<ListItem> createState() => _ListItemState();
// }
// class _ListItemState extends State<ListItem>{

//   @override
//   Widget build(BuildContext context){
//     return GestureDetector(
//     onTap:(){

//       Navigator.of(widget.mycontext1).pop();
//     },
//     child:
//   Container(
//     width:220,
//     height:45,
//     decoration:const BoxDecoration(
//       color:Color.fromRGBO(14,161,125,0.15),
//       borderRadius:BorderRadius.only(topRight:Radius.circular(20),
//       bottomRight:Radius.circular(20)
//       )
//     ),
//     child:Row(
//       // mainAxisAlignment:MainAxisAlignment.center,
//       children:[
//         const SizedBox(
//           width:20,
//         ),
//         Image.asset("${widget.iconName}",
//         width:18,
//         height:17,
//         ),
//         const SizedBox(
//           width:7,
//         ),
//         Text("${widget.name}",
//         style:GoogleFonts.poppins(
//           fontSize:16,
//           fontWeight:FontWeight.w400,
//         ),
//         ),

//       ],

//     ),
//   )
//   );
//   }}

// }
// GestureDetector listItem({String? name,String? iconName,required BuildContext context1}){
//   return
//  }
