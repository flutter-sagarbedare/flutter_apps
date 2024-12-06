import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:MyPage(),
    );
  }
}

class MyPage extends StatefulWidget{
  const MyPage({super.key});
  @override
  State createState()=>_MyPageState();
}
class _MyPageState extends State{

   final TextEditingController _nameEditingController = TextEditingController();
   final TextEditingController _compNameEditingController=TextEditingController();
   final TextEditingController _salaryEditingController =TextEditingController();

   final FocusNode _nameFocusNode = FocusNode();
   final FocusNode _compNameFocusNode = FocusNode();
   final FocusNode _salaryFocusNode = FocusNode();
    
     String? name="";
     String? compName="";
     String? salary="";

     Column showInfo(){
          return Column(
                  children:[
                        Text("$name"),
                        const SizedBox(height:20),
                        Text("$compName"),
                        const SizedBox(height:20),
                        Text("$salary"),
                        const SizedBox(height:20),
                  ],
                );
     }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar:AppBar(
          title:const Text("Demo"),
        ),
            body:Column(
              children: [
                Column(
                  children:[
               
                const SizedBox(
                  height:50,
                ),
                const Text("Enter Your Name",
                style:TextStyle(
                    fontSize:21,
                ),
                ),                              
                     Padding(
                        padding:EdgeInsets.only(left:30,right:30,top:12,bottom:15),
                        child:TextField(
                          controller: _nameEditingController,
                          focusNode: _nameFocusNode,
                          decoration:InputDecoration(
                            hintText:"Sagar Nivrutti Bedare",
                            border:InputBorder.none,
                            enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0),
                              borderSide:BorderSide(
                                color:Colors.blue,
                              ),
                            ),  
                            focusedBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(20),
                              
                            ),                          
                          ),
                          textInputAction:TextInputAction.next,
                          keyboardType:TextInputType.name,  
                          onSubmitted:(value){
                            name=value;
                          }
                        )
                      ),
                const Text("Enter Your Company Name",
                style:TextStyle(
                    fontSize:21,
                ),
                ),                              
                     Padding(
                        padding:EdgeInsets.only(left:30,right:30,top:12,bottom:15),
                        child:TextField(
                          controller: _compNameEditingController,
                          focusNode: _compNameFocusNode,
                          decoration:InputDecoration(
                            hintText:"Microsoft",
                            border:InputBorder.none,
                            enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0),
                              borderSide:BorderSide(
                                color:Colors.blue,
                              ),
                            ),  
                            focusedBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(20),
                              
                            ),                          
                          ),
                          textInputAction:TextInputAction.next,
                          keyboardType:TextInputType.name,  
                          onSubmitted:(value){
                            compName=value;
                          }
                        )
                      ),
                const Text("Enter Your Salary",
                style:TextStyle(
                    fontSize:21,
                ),
                ),                              
                     Padding(
                        padding:EdgeInsets.only(left:30,right:30,top:12,bottom:15),
                        child:TextField(
                          controller: _salaryEditingController,
                          focusNode: _salaryFocusNode,
                          decoration:InputDecoration(
                            hintText:"20000",
                            border:InputBorder.none,
                            enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(5.0),
                              borderSide:BorderSide(
                                color:Colors.blue,
                              ),
                            ),  
                            focusedBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(20),
                              
                            ),                          
                          ),
                          textInputAction:TextInputAction.next,
                          keyboardType:TextInputType.number,  
                          onSubmitted:(value){
                            salary=value;
                          }
                        )
                      ),
                        SizedBox(
                          child:ElevatedButton(
                            onPressed:(){
                                // setState((){
                                //   showInfo();
                                // });
                                print(name);
                                print(compName);
                                print(salary);
                                setState((){});
                            },
                            child:const Text("Submit"),
                          ),
                        ),                            
                ]),               
              ],              
            ),
      );
    }
}