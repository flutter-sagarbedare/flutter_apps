import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});
  @override
  State createState() => _homeScreenState();
}

class _homeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Image.asset('img/Rectangle1.png'),
        ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Choose Your\nBicycle",
                  style: GoogleFonts.poppins(
                      fontSize: 31,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                ),
                Image.asset('img/search.png'),
              ]),
              const SizedBox(height: 19),
              Image.asset(
                'img/Card1.png',
                scale: 0.5,
              ),
              const SizedBox(height: 17),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.asset('img/bicycle_icon.png'),
                // const SizedBox(width:28),
                // Image.asset('img/helmet.png'),
                const SizedBox(width: 28),
                Image.asset('img/gloves_icon.png'),
                const SizedBox(width: 28),

                Image.asset('img/gloves_icon.png'),
                const SizedBox(width: 28),

                Image.asset('img/botel_icon.png'),
                const SizedBox(width: 28),
              ]),
              const SizedBox(height: 20),
              Row(children: [
                Container(
                  width: 160,
                  height: 230,
                  decoration: const BoxDecoration(
                    gradient:LinearGradient(
                      colors:[Color.fromRGBO(53, 63, 84, 0.6),Color.fromRGBO(34, 40, 52, 0.6)]
                    ),
                     
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children:[
                      Image.asset('img/bi1.png',
                      scale:1
                      ),
                      Text("Road Bike",
                      style:GoogleFonts.poppins(
                        fontSize:15,
                        fontWeight:FontWeight.w500,
                        color:const Color.fromRGBO(195, 195, 195, 1),
                      ),
                      ),
                    ]
                  ),
                ),
                const SizedBox(width: 10),
              ]),
            ]),
          ),
        ]),
      ]),
    );
  }
}
