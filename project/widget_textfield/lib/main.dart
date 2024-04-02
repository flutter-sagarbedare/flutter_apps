import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"Flutter demo",
      home: MyHomePage(title:"add Names"),
      
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key,required this.title});
  final String title;
  @override
  State createState()=>_MyHomePageState();
}

class _MyHomePageState extends State{
      final TextEditingController _nameTextEditingController = TextEditingController();
      final FocusNode _nameFocusNode =  FocusNode();

    @override
    Widget build(BuildContext context){
      return Scaffold(
          appBar:AppBar(
              backgroundColor:Colors.black,
              foregroundColor:Colors.white,
              // title: Text(widget.title),
              title:const Text("Add Names"),
          ),
          body:Column(
            children:[
              const SizedBox(
                height:21,
              ),

              
              TextField(
                controller:_nameTextEditingController,
                focusNode:_nameFocusNode,
                decoration: InputDecoration(
                  hintText:"Enter Name",
                  border:InputBorder.none,
                  enabledBorder:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(5.0),
                    borderSide:const BorderSide(
                      color:Colors.blue
                    ),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color:Colors.pink
                    )
                  ),
                ),
                cursorColor:Colors.amber,
                textInputAction:TextInputAction.done,
                keyboardType:TextInputType.name,  
                onChanged:(value){
                  print("$value");
                },
                onSubmitted:(value){
                  print("$value");
                }
              ),
            ],
          ),
          floatingActionButton:FloatingActionButton(
            onPressed:(){},
            child:const Text("Add"),
          ),
      );
    }
}