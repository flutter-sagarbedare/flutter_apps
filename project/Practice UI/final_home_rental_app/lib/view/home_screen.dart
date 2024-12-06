import 'package:final_home_rental_app/view/night_villa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
        body: ListView(
          children: [
            Padding(
              padding:const EdgeInsets.only(top: 20, left: 22, right: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // const SizedBox(width:20),
                      Text(
                        "Hey Sagar",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(101, 101, 101, 1),
                        ),
                      ),
                      const Spacer(flex: 1),
                      
                    CircleAvatar(
                      radius:30,  
                      backgroundColor:const Color.fromRGBO(32, 168, 247, 0.502),                    
                        child:Padding(
                          padding:const EdgeInsets.all(3),
                          child: ClipOval(
                            child: Image.asset('img/profile.jpg',
                                                    width:52
                            
                                                    ),
                          ),)
                      )
                      // const SizedBox(width:20),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Let’s find your best \nresidence ",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 22),
                  Container(
                    // height:100,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        spreadRadius: 2,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ]),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          size: 30,
                        ),
                        hintText: "Search Your favourite paradise",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Most Popular",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(32, 169, 247, 1),
                          ),
                        ),
                      ]
                      ),
                ],
              ),
            ),
            const SizedBox(height:10),
            Expanded(
              // flex:0,
              child: SizedBox(
               height:306 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap:(){
                          
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder:(context) => const NightVilla(),
                                    )
                                  );
                                
                      },
                      child: Center(
                        child: Container(
                          // width: 211,
                          height: 306,
                          // color:Colors.red,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            color: const Color.fromRGBO(254, 254, 254, 1),
                            // color:Colors.black
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Stack(
                                      children: [
                                        Image.asset('img/home_1.png'),
                                        
                                        Container(
                                          height:21,
                                          width:45,
                                          margin:const EdgeInsets.only(top:9,right:9,left:135,bottom:165,),
                                          decoration:BoxDecoration(
                                            color:const Color.fromRGBO(112,200 ,250, 1),
                                            borderRadius:BorderRadius.circular(10)
                                          ),
                                          child:
                                           Row(
                                              children:[
                                                const Icon(Icons.star_rounded,
                                                size:18,
                                                color:Color.fromRGBO(251,227,12,1),
                                                ),
                                                Text("4.9",
                                                style:GoogleFonts.poppins(
                                                  fontSize:12,
                                                ),
                                                ),
                                              ],
                                            
                                          ),
                                        ),
                                        
                                        ]),
                                ),
                                // const SizedBox(height:10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 11, left: 11, right: 11, bottom: 14),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Night Hill Villa",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      Text("London,Night Hill",
                                          style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              color: const Color.fromARGB(189, 72, 72, 72),
                                              fontWeight: FontWeight.w600,)),
                                      Row(children: [
                                        Text("\$5000",
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: const Color.fromRGBO(
                                                  32, 169, 247, 1),
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Text("/Month",
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: const Color.fromARGB(189, 72, 72, 72),
                                              fontWeight: FontWeight.w600,
                                            )),
                                      ])
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Center(
                      child: Container(
                        // width: 211,
                        height: 306,
                        // color:Colors.red,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color.fromRGBO(254, 254, 254, 1),
                          // color:Colors.black
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:BorderRadius.circular(10),
                                        child: Image.asset('img/home_2.png',
                                        fit:BoxFit.cover,
                                        height:196
                                        ),
                                      ),
                                      
                                      Container(
                                        height:21,
                                        width:45,
                                        margin:const EdgeInsets.only(top:9,right:9,left:135,bottom:165,),
                                        decoration:BoxDecoration(
                                          color:const Color.fromRGBO(112,200 ,250, 1),
                                          borderRadius:BorderRadius.circular(10)
                                        ),
                                        child:
                                         Row(
                                            children:[
                                              const Icon(Icons.star_rounded,
                                              size:18,
                                              color:Color.fromRGBO(251,227,12,1),
                                              ),
                                              Text("4.9",
                                              style:GoogleFonts.poppins(
                                                fontSize:12,
                                              ),
                                              ),
                                            ],
                                          
                                        ),
                                      ),
                                      
                                      ]),
                              ),
                              // const SizedBox(height:10),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 11, left: 11, right: 11, bottom: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Night Villa",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    Text("London,New Park",
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,)),
                                    Row(children: [
                                      Text("\$4900",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                32, 169, 247, 1),
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("/Month",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ])
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Center(
                      child: Container(
                        // width: 211,
                        height: 306,
                        // color:Colors.red,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color.fromRGBO(254, 254, 254, 1),
                          // color:Colors.black
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Stack(
                                    children: [
                                      Image.asset('img/home_1.png'),
                                      
                                      Container(
                                        height:21,
                                        width:45,
                                        margin:const EdgeInsets.only(top:9,right:9,left:135,bottom:165,),
                                        decoration:BoxDecoration(
                                          color:const Color.fromRGBO(112,200 ,250, 1),
                                          borderRadius:BorderRadius.circular(10)
                                        ),
                                        child:
                                         Row(
                                            children:[
                                              const Icon(Icons.star_rounded,
                                              size:18,
                                              color:Color.fromRGBO(251,227,12,1),
                                              ),
                                              Text("4.9",
                                              style:GoogleFonts.poppins(
                                                fontSize:12,
                                              ),
                                              ),
                                            ],
                                          
                                        ),
                                      ),
                                      
                                      ]),
                              ),
                              // const SizedBox(height:10),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 11, left: 11, right: 11, bottom: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Night Hill Villa",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    Text("London,Night Hill",
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,)),
                                    Row(children: [
                                      Text("\$5000",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                32, 169, 247, 1),
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("/Month",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ])
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                   Center(
                      child: Container(
                        // width: 211,
                        height: 306,
                        // color:Colors.red,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color.fromRGBO(254, 254, 254, 1),
                          // color:Colors.black
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:BorderRadius.circular(10),
                                        child: Image.asset('img/home_2.png',
                                        fit:BoxFit.cover,
                                        height:196
                                        ),
                                      ),
                                      
                                      Container(
                                        height:21,
                                        width:45,
                                        margin:const EdgeInsets.only(top:9,right:9,left:135,bottom:165,),
                                        decoration:BoxDecoration(
                                          color:const Color.fromRGBO(112,200 ,250, 1),
                                          borderRadius:BorderRadius.circular(10)
                                        ),
                                        child:
                                         Row(
                                            children:[
                                              const Icon(Icons.star_rounded,
                                              size:18,
                                              color:Color.fromRGBO(251,227,12,1),
                                              ),
                                              Text("4.9",
                                              style:GoogleFonts.poppins(
                                                fontSize:12,
                                              ),
                                              ),
                                            ],
                                          
                                        ),
                                      ),
                                      
                                      ]),
                              ),
                              // const SizedBox(height:10),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 11, left: 11, right: 11, bottom: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Night Villa",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    Text("London,New Park",
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,)),
                                    Row(children: [
                                      Text("\$4900",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                32, 169, 247, 1),
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("/Month",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ])
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                   
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 0),
                  
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nearby Your Location",
                                style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "See all",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(32, 169, 247, 1),
                                ),
                              ),
                            ]
                            ),
                      ),
                      Padding(
                      padding:const EdgeInsets.all(16),
                      child:Container(
                      height:108,
                      
                      decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:const Color.fromRGBO(255, 255, 255, 2)
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                          
                          children:[
                              Image.asset('img/nearby.png'),
                              const SizedBox(width:10),
                              Column(
                             crossAxisAlignment:CrossAxisAlignment.start,
                             children: [
                               Text("Jumeriah Golf Estates Villa",
                                style:GoogleFonts.poppins(
                                    fontSize:15,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(0, 0, 0, 1)
                              ),
                              ),
                              Row(
                              children:[
                               const  Icon(Icons.location_on,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("London,Area Plam Jumeriah",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                )
                              ],),
                              Row(
                              children:[
                                const Icon(Icons.bedroom_child,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("4 Bedrooms",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                ),
                                const SizedBox(width:5),
                                const Icon(Icons.bathroom_rounded,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("5 Bedrooms",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                ),
                              ],),
                               Row(children: [
                                const SizedBox(width: 130,),
                                      Text("\$5000",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                32, 169, 247, 1),
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("/Month",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ])
                          ],),
                          ]),
                        ),
                      ),
                      ),
                      Padding(
                      padding:const EdgeInsets.all(16),
                      child:Container(
                      height:108,
                      
                      decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:const Color.fromRGBO(255, 255, 255, 2)
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                          
                          children:[
                              SizedBox(
                                height:90,
                                width:90,
                               
                                child: Image.asset('img/nearby2.webp',
                                fit:BoxFit.cover
                                )),
                              const SizedBox(width:10),
                              Column(
                             crossAxisAlignment:CrossAxisAlignment.start,
                             children: [
                               Text("Vellonir James Villa",
                                style:GoogleFonts.poppins(
                                    fontSize:15,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(0, 0, 0, 1)
                              ),
                              ),
                              Row(
                              children:[
                              const   Icon(Icons.location_on,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("London,Area New Stacl",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                )
                              ],),
                              Row(
                              children:[
                                const Icon(Icons.bedroom_child,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("4 Bedrooms",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                ),
                                const SizedBox(width:5),
                               const  Icon(Icons.bathroom_rounded,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("5 Bedrooms",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                ),
                              ],),
                               Row(children: [
                                const SizedBox(width: 130,),
                                      Text("\$7000",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                32, 169, 247, 1),
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("/Month",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ])
                          ],),
                          ]),
                        ),
                      ),
                      ),
                      Padding(
                      padding:const EdgeInsets.all(16),
                      child:Container(
                      height:108,
                      
                      decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:const Color.fromRGBO(255, 255, 255, 2)
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                          
                          children:[
                              Image.asset('img/nearby.png'),
                              const SizedBox(width:10),
                              Column(
                             crossAxisAlignment:CrossAxisAlignment.start,
                             children: [
                               Text("Jumeriah Golf Estates Villa",
                                style:GoogleFonts.poppins(
                                    fontSize:15,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(0, 0, 0, 1)
                              ),
                              ),
                              Row(
                              children:[
                                const Icon(Icons.location_on,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("London,Area Plam Jumeriah",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                )
                              ],),
                              Row(
                              children:[
                               const  Icon(Icons.bedroom_child,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("4 Bedrooms",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                ),
                                const SizedBox(width:5),
                                const Icon(Icons.bathroom_rounded,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("5 Bedrooms",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                ),
                              ],),
                               Row(children: [
                                const SizedBox(width: 130,),
                                      Text("\$5000",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                32, 169, 247, 1),
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("/Month",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ])
                          ],),
                          ]),
                        ),
                      ),
                      ),
                      Padding(
                      padding:const EdgeInsets.all(16),
                      child:Container(
                      height:108,
                      
                      decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:const Color.fromRGBO(255, 255, 255, 2)
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                          
                          children:[
                              SizedBox(
                                height:90,
                                width:90,
                               
                                child: Image.asset('img/nearby2.webp',
                                fit:BoxFit.cover
                                )),
                              const SizedBox(width:10),
                              Column(
                             crossAxisAlignment:CrossAxisAlignment.start,
                             children: [
                               Text("Vellonir James Villa",
                                style:GoogleFonts.poppins(
                                    fontSize:15,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(0, 0, 0, 1)
                              ),
                              ),
                              Row(
                              children:[
                               const  Icon(Icons.location_on,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("London,Area New Stacl",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                )
                              ],),
                              Row(
                              children:[
                                const Icon(Icons.bedroom_child,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("4 Bedrooms",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                ),
                                const SizedBox(width:5),
                                const Icon(Icons.bathroom_rounded,
                                color:Color.fromRGBO(90, 90, 90, 1)
                                ),
                                Text("5 Bedrooms",
                                style:GoogleFonts.poppins(
                                    fontSize:13,
                                    fontWeight:FontWeight.bold,
                                    color:const Color.fromRGBO(90, 90, 90, 1)
                                ),
                                ),
                              ],),
                               Row(children: [
                                const SizedBox(width: 130,),
                                      Text("\$7000",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromRGBO(
                                                32, 169, 247, 1),
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("/Month",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: const Color.fromARGB(189, 72, 72, 72),
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ])
                          ],),
                          ]),
                        ),
                      ),
                      ),
                     
          ],
        )
        );
  }
}
