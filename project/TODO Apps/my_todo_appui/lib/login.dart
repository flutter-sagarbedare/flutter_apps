
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TodoUi.dart';
// import 'main.dart';

class LoginSignUp extends StatefulWidget {
  LoginSignUp({super.key});
  @override
  State<LoginSignUp> createState() => _LoginSignUpState();
}
 
class LoginInfo{
 final String userName;
 final String userId;
 final String userPassword;
  
  const LoginInfo({
   required this.userName,
   required this.userId,
   required this.userPassword
  }
  );
}

class _LoginSignUpState extends State<LoginSignUp> {
  bool screenId = true;
  String? userName;
  String? userId;
  String? userPassword;
  bool accountCreated = false;

  TextEditingController userName_Controller = TextEditingController();
  TextEditingController userId_Controller = TextEditingController();
  TextEditingController userPassword_Controller = TextEditingController();
  TextEditingController loginId = TextEditingController();
  TextEditingController loginPass = TextEditingController();

  
  List<LoginInfo> loginInfo=[
   const LoginInfo(
    userName:"Sagar",
    userId:"sagar",
    userPassword:"sagar"
   ),
  ];

  void createAccount() {
    if (userName_Controller.text.isNotEmpty &&
        userId_Controller.text.isNotEmpty &&
        userPassword_Controller.text.isNotEmpty) {
      setState(() {
        accountCreated = true;
      });
    }
  }

  void validateLogin() {
    if(accountCreated){
    if (loginId.text.isNotEmpty == userId_Controller.text.isNotEmpty &&
        loginPass.text.isNotEmpty == userPassword_Controller.text.isNotEmpty) {
      if (loginId.text == userId_Controller.text &&
          loginPass.text == userPassword_Controller.text) {
        setState(() {
          screenId = false;
          Navigator.of(context).pop();
        });
      }
    }
    }
  }
  // OutlineInputBorder validateLoginPass(){
  // if (userPassword_Controller.text == loginPass.text) {
  //   return const OutlineInputBorder(
  //                   borderSide:BorderSide(
  //                     color:Colors.red,
  //                   ),
  //                 );
  // }else{
  //   return const OutlineInputBorder(
  //                   borderSide:BorderSide(
  //                     color:Colors.green,
  //                   ),
  //                 );
  // }
  // }

  String? checkPassword() {
      return "sagar";
    }
  

  dynamic startScreen(bool screenId) {
    if (screenId == true) {
      return Scaffold(
        // backgroundColor:Color.fromRGBO(111, 81, 255, 1),
        body: Center(
          child: Column(children: [
            Image.asset(
              "images/welcome.png",
              height: 500,
              width: 400,
            ),
            Text(
              "Organize Your",
              style: GoogleFonts.lato(
                fontSize: 40,
              ),
            ),
            Text(
              "Daily Tasks",
              style: GoogleFonts.lato(
                fontSize: 40,
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
              
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        logInSignUp(true);
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(31, 65, 187, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      child: Center(
                        child: Text(
                          "Login",
                          style: GoogleFonts.quicksand(
                            fontSize: 22,
                            color: Colors.white,
                            // fontWeight:FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: const Text("Sign Up"),
                  // ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        logInSignUp(false);
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(31, 65, 187, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.quicksand(
                            fontSize: 22,
                            color: Colors.white,
                            // fontWeight:FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      );
    } else{
      return TodoUi(name:userName_Controller.text);
    }
  }

  void logInSignUp(bool flag) {
    showModalBottomSheet(
        isDismissible: true,
        isScrollControlled:true,
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) {
          return bottomSheet(flag);
        });
  }

  Padding bottomSheet(bool checkLogin) {
    if (checkLogin == true) {
      // login screen
      return Padding(
        padding: const EdgeInsets.all(50),
        child: Column(children: [
          Text(
            "Login",
            style: GoogleFonts.quicksand(
                fontSize: 27, fontWeight: FontWeight.w700),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 30),
              // Text("Enter User Name"),
              //   const SizedBox(height:10),

              // TextField(),
              TextField(
                controller: loginId,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                  ),
                  hintText: "User Id",
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Forgot User Id",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),

              // Text("Enter Password"),
              // const  SizedBox(height:10),

              TextField(
                controller: loginPass,                       
                decoration: InputDecoration( 
                  // focusedErrorBorder:validateLoginPass(),
                  hintText: "PassWord",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    
                  ),
                  
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Forgot User Password",
                style: TextStyle(
                  fontSize: 16,
                  // color:Colors.indigo,
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                  child: Container(
                      width: 400,
                      height: 49,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(31, 65, 187, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        style: GoogleFonts.quicksand(
                            fontSize: 20, color: Colors.white),
                      ))),
                  onTap: () {
                    setState(() {
                      validateLogin();
                      // validateLoginPass();
                    });
                  }),
            ],
          ),
        ]),
      );
    } else {
      // sign up screen
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Text(
            "Create Account",
            style: GoogleFonts.quicksand(
                fontSize: 27, fontWeight: FontWeight.w700),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 30),
              // Text("Enter User Name"),
              //   const SizedBox(height:10),

              // TextField(),
              TextField(
                controller: userName_Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                  ),
                  hintText: "Enter Your Name",
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: userId_Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  hintText: "Enter New User Id",
                ),
              ),

              const SizedBox(height: 25),

              // Text("Enter Password"),
              // const  SizedBox(height:10),

              TextField(
                controller: userPassword_Controller,
                decoration: const InputDecoration(
                  hintText: "Enter new PassWord",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(height: 6),
              
              const SizedBox(height: 15),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                  child: Container(
                      width: 400,
                      height: 49,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(31, 65, 187, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                          child: Text(
                        "Create Account",
                        style: GoogleFonts.quicksand(
                            fontSize: 20, color: Colors.white),
                      ))),
                  onTap: () {
                    setState(() {
                      loginInfo.add(LoginInfo(
                        userName:userName_Controller.text,
                        userId:userId_Controller.text,
                        userPassword:userPassword_Controller.text,
                      ));
                      
                      // userName = userName_Controller.text;
                      // userId = userId_Controller.text;
                      // userPassword = userPassword_Controller.text;
                      createAccount();
                      if (accountCreated) {
                        Navigator.of(context).pop();
                        logInSignUp(accountCreated);
                      }
                    });
                  }),
            ],
          ),
        ]),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return startScreen(screenId);
  }
}
