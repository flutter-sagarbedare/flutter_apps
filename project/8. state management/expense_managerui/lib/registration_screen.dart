import 'package:expense_managerui/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'transaction_screen.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Container(
                child: Image.asset('img/logo_1.png'),
                height: 58.82,
                width: 69.76,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                // color:Colors.red,
                height: 390,
                width: 280,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create your Account",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 49,
                        width: 280,
                        padding: const EdgeInsets.only(
                            top: 9, bottom: 9, left: 9, right: 9),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(
                                1.0,
                                5.0,
                              ),
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Name",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Container(
                        height: 49,
                        width: 280,
                        padding: const EdgeInsets.only(
                            top: 9, bottom: 9, left: 9, right: 9),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(
                                1.0,
                                5.0,
                              ),
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "UserName",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Container(
                        height: 49,
                        width: 280,
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color.fromRGBO(255, 255, 255, 1),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(
                                1.0,
                                5.0,
                              ),
                            ),
                          ],
                        ),
                        child: const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Container(
                        height: 49,
                        width: 280,
                        padding: const EdgeInsets.only(
                            top: 9, bottom: 9, left: 9, right: 9),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(
                                1.0,
                                5.0,
                              ),
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                      Container(
                        height: 49,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          color: Color.fromRGBO(14, 161, 125, 1),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder:(context) => loginScreen(),
                              ),
                            );
                          },
                          child: Center(
                              child: Text(
                            "Sign Up",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                        ),
                      ),
                    ]),
              ),

              const Spacer(
                    flex:1,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:[

                    Text("Already have an account? ",
                      style:GoogleFonts.poppins(
                        fontSize:12,
                        fontWeight:FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                    
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder:(context) => loginScreen()
                            )
                          );
                      },

                    child:Text(" Sign In",
                          style:GoogleFonts.poppins(
                              fontSize:12,
                              fontWeight:FontWeight.w400,
                              color:const Color.fromRGBO(14, 161, 125, 1),
                            ),
                    ),
                    ),
                    ],
                  ),
                  
                  const SizedBox(height:30),
            ],
          ),
        ),
      ),
    );
  }
}
