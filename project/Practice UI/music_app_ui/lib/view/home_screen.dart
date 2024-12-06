import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/view/song_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class Navigation_Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 75,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(19, 19, 19, 1),
            // color:Colors.red,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(blurRadius: 1, spreadRadius: 1, color: Colors.black)
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 25,
              left: 25,
              bottom: 4,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        const Icon(
                          Icons.favorite_outline,
                          color: Color.fromRGBO(157, 178, 206, 1),
                          size: 26,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Favorite",
                          style: GoogleFonts.abel(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(157, 178, 206, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        const Icon(
                          Icons.search_outlined,
                          color: Color.fromRGBO(157, 178, 206, 1),
                          size: 26,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Search",
                          style: GoogleFonts.abel(
                            fontSize: 13,
                            color: const Color.fromRGBO(157, 178, 206, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        Image.asset(
                          "img/home.png",
                          color: const Color.fromRGBO(157, 178, 206, 1),
                          width: 22,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Home",
                          style: GoogleFonts.abel(
                            fontSize: 13,
                            color: const Color.fromRGBO(157, 178, 206, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        Image.asset(
                          "img/cart.png",
                          color: const Color.fromRGBO(157, 178, 206, 1),
                          width: 22,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Cart",
                          style: GoogleFonts.abel(
                            fontSize: 13,
                            color: const Color.fromRGBO(157, 178, 206, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        const Icon(
                          Icons.person_outline,
                          color: Color.fromRGBO(157, 178, 206, 1),
                          size: 26,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Profile",
                          style: GoogleFonts.abel(
                            fontSize: 13,
                            color: const Color.fromRGBO(157, 178, 206, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //  const SizedBox(width:8),
                ]),
          ),
        ),
      ],
    );
  }
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        // floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Navigation_Bar(),
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(children: [
                Container(
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Image.asset('img/slide11.png'),
                      Row(
                        children: [
                          const Column(children: [
                            SizedBox(width: 20),
                          ]),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 225),
                              Text(
                                "A.L.O.N.E",
                                style: GoogleFonts.inter(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              const SizedBox(height: 5),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 37,
                                  width: 127,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 46, 0, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(19))),
                                  child: Center(
                                    child: Text(
                                      "Subscribe",
                                      style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            const Color.fromRGBO(19, 19, 19, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 26,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(255, 61, 0, 1),
                        )),
                    const SizedBox(width: 7),
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                    const SizedBox(width: 3),
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Discography",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 46, 0, 1),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See all",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: const Color.fromRGBO(248, 162, 69, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                // ListView.builder(

                //   scrollDirection:Axis.horizontal,
                //   itemCount:10,
                //   itemBuilder:(context,index){
                //     return
                //      Container(
                //       width:100,
                //       height:100,
                //       color:Colors.white,

                //     );
                //   }
                // ),
                const SizedBox(height: 13),
                SizedBox(
                  height: 180,
                  // color: Colors.white,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('img/dead_inside.png'),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Dead Inside",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(203, 200, 200, 1)),
                        ),
                        // const SizedBox(height:),
                        Text(
                          "2020",
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(132, 125, 125, 1)),
                        )
                      ],
                    ),
                    const SizedBox(width: 26),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Song_Player_Screen(),
                        ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('img/alone.png'),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Alone",
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(203, 200, 200, 1)),
                          ),
                          // const SizedBox(height:),
                          Text(
                            "2023",
                            style: GoogleFonts.inter(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(132, 125, 125, 1)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 26),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 119,
                          height: 140,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Image.asset('img/heartless.jfif',
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Heartless",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(203, 200, 200, 1)),
                        ),
                        // const SizedBox(height:),
                        Text(
                          "2023",
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(132, 125, 125, 1)),
                        )
                      ],
                    ),
                    const SizedBox(width: 26),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('img/dead_inside.png'),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Dead Inside",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(203, 200, 200, 1)),
                        ),
                        // const SizedBox(height:),
                        Text(
                          "2020",
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(132, 125, 125, 1)),
                        )
                      ],
                    ),
                    const SizedBox(width: 26),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('img/alone.png'),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Alone",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(203, 200, 200, 1)),
                        ),
                        // const SizedBox(height:),
                        Text(
                          "2023",
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(132, 125, 125, 1)),
                        )
                      ],
                    ),
                  ]),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Popular Singles",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(203, 200, 200, 1),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See all",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: const Color.fromRGBO(248, 162, 69, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    Image.asset('img/weare.png'),
                    const SizedBox(width: 12),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const SizedBox(height:10),
                          Text(
                            "We Are Chaos",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromRGBO(203, 200, 200, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "2023 * Easy Living",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromRGBO(132, 125, 125, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(Icons.more_vert, color: Colors.white, size: 30)
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    Image.asset('img/dead_inside.png', height: 72, width: 67),
                    const SizedBox(width: 12),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const SizedBox(height:10),
                          Text(
                            "Dead Inside",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromRGBO(203, 200, 200, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "2023 * Easy Living",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromRGBO(132, 125, 125, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(Icons.more_vert, color: Colors.white, size: 30)
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    Image.asset('img/alone.png', height: 72, width: 67),
                    const SizedBox(width: 12),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const SizedBox(height:10),
                          Text(
                            "Dead Inside",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromRGBO(203, 200, 200, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "2023 * Easy Living",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromRGBO(132, 125, 125, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(Icons.more_vert, color: Colors.white, size: 30)
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    Image.asset('img/heartless.jfif', height: 72, width: 67),
                    const SizedBox(width: 12),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const SizedBox(height:10),
                          Text(
                            "Dead Inside",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromRGBO(203, 200, 200, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "2023 * Easy Living",
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: const Color.fromRGBO(132, 125, 125, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(Icons.more_vert, color: Colors.white, size: 30)
                  ]),
                ),
              ]);
            }));
  }
}
