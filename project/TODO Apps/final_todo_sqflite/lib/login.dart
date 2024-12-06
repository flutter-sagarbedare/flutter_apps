import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TodoUi.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'main.dart';

// dynamic loginDatabase;

class SignUp {
  final String userName;
  final String userId;
  final String userPassword;

  const SignUp({
    required this.userName,
    required this.userId,
    required this.userPassword,
  });

  Map<String, dynamic> signUpMap() {
    return {
      'userName': userName,
      'userId': userId,
      'password': userPassword,
    };
  }

  @override
  String toString() {
    return '{{userName:$userName,userId:$userId,userPassword:$userPassword}';
  }
}

Future insertLoginData(SignUp obj) async {
  final localDB1 = await loginDatabase;

  await localDB1.insert('SignUp', obj.signUpMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
  @override
  String toString() {
    return '{{userName:${obj.userName},userId:${obj.userId},userPassword:${obj.userPassword}}';
  }
}

Future<List<Map<String, dynamic>>> getSignUpData() async {
  final localDB1 = await loginDatabase;

  List<Map<String, dynamic>> listUsersData = await localDB1.query("SignUp");

 
  return listUsersData; 
}

void createDatabase() async {
  
}

  String finalName='';

class LoginSignUp extends StatefulWidget {
  const LoginSignUp({super.key});
  @override
  State<LoginSignUp> createState() => _LoginSignUpState();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();
GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

GlobalKey<FormFieldState> _userNameKey = GlobalKey<FormFieldState>();

GlobalKey<FormFieldState> _userIdKey = GlobalKey<FormFieldState>();

GlobalKey<FormFieldState> _userPasswordKey = GlobalKey<FormFieldState>();

GlobalKey<FormFieldState> _signNameKey = GlobalKey<FormFieldState>();
GlobalKey<FormFieldState> _signIdKey = GlobalKey<FormFieldState>();
GlobalKey<FormFieldState> _signPasswordKey = GlobalKey<FormFieldState>();

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

  String? _validateUserName(value) {
    if (value!.isEmpty) {
      return "Please enter Your Name";
    } else {
      return null;
    }
  }

  String? _validateUserId(value) {
    if (value!.isEmpty) {
      return "Please enter Your Name";
    } else {
      return null;
    }
  }

  String? _validateUserPassword(value) {
    if (value!.isEmpty) {
      return "Please enter Your Name";
    } else {
      return null;
    }
  }

  String? validateLoginId(
    value,
  ) {
    log("in login id validator");
    if (value!.isEmpty) {
      return "Please enter Login Id";
    } else {
      return null;
    }
  }

  String? validateLoginPassword(value) {
    log("in login password validator");
    if (value!.isEmpty) {
      return "Please enter Login Password";
    } else {
      return null;
    }
  }

  void createAccount() {
    log("In create account function");
    bool name = _signNameKey.currentState!.validate();
    bool id = _signIdKey.currentState!.validate();
    bool pass = _signPasswordKey.currentState!.validate();

    if (name && id && pass) {
      if (userName_Controller.text.isNotEmpty &&
          userId_Controller.text.isNotEmpty &&
          userPassword_Controller.text.isNotEmpty) {
        log('account created');

        setState(() {
          SignUp obj = SignUp(
              userName: userName_Controller.text,
              userId: userId_Controller.text,
              userPassword: userPassword_Controller.text);
          insertLoginData(obj);
          // log(obj.toString());
          // getSignUpData();
          accountCreated = true;
        });
      }
    } else {
      log('account not created');
    }
    clearController();
    log(userName_Controller.text);
    log(userId_Controller.text);
    log(userPassword_Controller.text);
  }

  Future<void> validateLogin() async {
    bool match=false;
    
    log("in validate login");
    List<Map<String, dynamic>> obj = await getSignUpData();
    log(obj.toString());
    log("${obj.length}");

      if(loginId.text.isNotEmpty && loginPass.text.isNotEmpty){
              log("login 1");
              for(int i = 0;i < obj.length;i++){
                log("login for loop");
               print(loginId.text);
               print(loginPass.text);
                if(loginId.text == obj[i]['userId'] && loginPass.text == obj[i]['password']){
                    log("login 2");
                    finalName = obj[i]['userName'];
                    log(finalName);
                    match = true; 
        }
      }
      }
      if(match){
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder:(context) =>TodoUi(userName:finalName),
          ),
        );
        
        // Navigator.pushNamed(context, '/second');
      } 
    clearController();

}
    


  dynamic startScreen(bool screenId) {
    if (screenId == true) {
      return Scaffold(
        // backgroundColor:Color.fromRGBO(111, 81, 255, 1),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
           children: [
            const SizedBox(height:20,),
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
    } else {

      // return TodoUi(userName: userName_Controller.text);
      return  TodoUi(userName:finalName);
    }
  }

  void clearController() {
    userName_Controller.clear();
    userId_Controller.clear();
    userPassword_Controller.clear();
    loginId.clear();
    loginPass.clear();
  }

  void logInSignUp(bool flag) {
    showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (BuildContext context) {
          return bottomSheet(flag);
        });
  }

  dynamic bottomSheet(bool checkLogin) {
    if (checkLogin == true) {
      // login screen
      return SingleChildScrollView(child:  Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Form(
          key: _formKey,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                //  TextFormField(
                //   // The validator receives the text that the user has entered.
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please enter some text';
                //     }
                //     return null;
                //   },
                // ),
                TextFormField(
                  controller: loginId,
                  key: _userIdKey,
                  validator: validateLoginId,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    label: Text("Enter username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                    ),
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

                TextFormField(
                  controller: loginPass,
                  key: _userPasswordKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validateLoginPassword,
                  decoration: const InputDecoration(
                    // focusedErrorBorder:validateLoginPass(),
                    label: Text("Enter Password"),

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
                      
                      _userIdKey.currentState!.validate();
                      _userPasswordKey.currentState!.validate();
                      validateLogin();
                      // clearController();

                      // validateLoginPass();
                    });
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ]),
        ),
      ),
      );
    } else {
      // sign up screen
      return SingleChildScrollView(child: Padding(
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Form(
          key: _formKey2,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: userName_Controller,
                  key: _signNameKey,
                  validator: _validateUserName,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                    ),
                    label: Text("Enter Your Name"),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: userId_Controller,
                  key: _signIdKey,
                  validator: _validateUserId,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                    ),
                    label: Text("Enter New User Id"),
                  ),
                ),

                const SizedBox(height: 25),

                // Text("Enter Password"),
                // const  SizedBox(height:10),

                TextFormField(
                  controller: userPassword_Controller,
                  key: _signPasswordKey,
                  validator: _validateUserPassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    label: Text("Enter New Password"),
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
                      // log("in create account call");
                      //   setState((){
                      //   createAccount();
                      //   });

                      setState(() {
                      
                        createAccount();
                        // clearController();
                        if (accountCreated) {
                          Navigator.of(context).pop();
                          logInSignUp(accountCreated);
                        }
                      });
                    }),
                const SizedBox(height: 20),
              ],
            ),
          ]),
        ),
      ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return startScreen(screenId);
  }
}
