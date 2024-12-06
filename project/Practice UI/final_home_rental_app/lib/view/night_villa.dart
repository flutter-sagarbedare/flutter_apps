import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class NightVilla extends StatefulWidget {
  const NightVilla({super.key});

  @override
  State createState() => _nightVillaState();
}

class _nightVillaState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:24.0,left:14,right:14),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width:4
                ),
                GestureDetector(
                  onTap:(){
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.arrow_back_ios,
                      size: 26, weight: 80, color: Colors.black),
                ),
                const SizedBox(width: 107),
                Text(
                  "Details",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 38),
            Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('img/home_1_slide.png'))),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                const SizedBox(height:30),
                Text("Night Hill Villa",
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.w600)),
                Text("London,Night Hill",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: const Color.fromARGB(189, 72, 72, 72),
                      fontWeight: FontWeight.w600,
                    )),
              ]),
              Row(children: [
                Text("\$5000",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: const Color.fromRGBO(32, 169, 247, 1),
                      fontWeight: FontWeight.w600,
                    )),
                Text("/Month",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: const Color.fromARGB(189, 72, 72, 72),
                      fontWeight: FontWeight.w600,
                    )),
              ]),
            ]),
            const SizedBox(height:18),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
              Container(
                width:110,
                height:141,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment:CrossAxisAlignment.stretch,
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children:[
                      const Row(
                          children: [
                            Icon(Icons.bedroom_child,
                            size:40,
                            color:Color.fromRGBO(90, 90, 90, 1)
                            ),
                          ],
                        ),
                          Text("BedRooms",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(189, 72, 72, 72),
                        fontWeight: FontWeight.w600,
                      )),
                         Text("5",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      )),
                      ]
                    
                  ),
                ),),
            const SizedBox(width: 14,),
             Container(
                width:110,
                height:141,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment:CrossAxisAlignment.stretch,
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children:[
                      const Row(
                          children: [
                            Icon(Icons.bathroom,
                            size:40,
                            color:Color.fromRGBO(90, 90, 90, 1)
                            ),
                          ],
                        ),
                          Text("BathRoom",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(189, 72, 72, 72),
                        fontWeight: FontWeight.w600,
                      )),
                         Text("5",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      )),
                      ]
                    
                  ),
                ),),
            const SizedBox(width: 14,),
             Container(
                width:110,
                height:141,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment:CrossAxisAlignment.stretch,
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children:[
                      Row(
                          children: [
                            Image.asset('img/squareft.png',
                            width:40,
                            color:Color.fromRGBO(90, 90, 90, 1)
                            ),
                          ],
                        ),
                          Text("Square ft",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(189, 72, 72, 72),
                        fontWeight: FontWeight.w600,
                      )),
                         Text("7000 sq ft",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      )),
                      ]
                    
                  ),
                ),),
          
            ],),
            const SizedBox(height: 10,),
            Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
            style:GoogleFonts.poppins(
              fontSize:15,
              color:const Color.fromRGBO(0,0,0,1),
              fontWeight:FontWeight.w400
            )
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
      floatingActionButton:FloatingActionButton.extended(
        backgroundColor:const Color.fromRGBO(32, 169, 247, 1),        
        onPressed:(){},
        label:Container(
            width:220,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(20),
            ),
            child: Center(
              child:Text("Rent Now",
              style:GoogleFonts.poppins(
                fontSize:22,
                fontWeight:FontWeight.w500,
                color:Colors.white
              ),
              ),
            ),            
          ),
        )
      
    );
  }
}
