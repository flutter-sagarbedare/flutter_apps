import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"FLutter Demo",
      theme:ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor:Colors.amber,
            foregroundColor:Colors.red,
        ),
        colorScheme:ColorScheme.fromSeed(
          seedColor:Colors.purple,
          background:Colors.grey,
          primary:Colors.blue,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
            backgroundColor:Colors.red,
            foregroundColor:Colors.black,
            fixedSize:const Size(300,10),
          ),
        ),
        textTheme:const TextTheme(
          displayLarge:TextStyle(
            color:Colors.red,
            fontSize:26.0,
            fontStyle:FontStyle.italic,
            fontWeight:FontWeight.bold,
          ),
        ),
        useMaterial3:true,
      ),
      home:const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State createState() => _MyHomePageState();

}

class _MyHomePageState extends State{
  int _counter = 0;

  void _incrementCounter(){
    setState((){
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar:AppBar(
            title:const Text("Counter App"),
            backgroundColor:Colors.black,
            foregroundColor:Colors.white,
          ),
          body:Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("You have pushed the button this many times : ",
                style:Theme.of(context).textTheme.displayLarge,
                ),
                Text("$_counter",
                style:Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                  onPressed:(){},
                  child:const Text(
                    "My button",
                  ),
                ),
                
              ]
            ),
          ),
          floatingActionButton:FloatingActionButton(
            onPressed:_incrementCounter,
            tooltip:"Increment",
            child:const Icon(Icons.add),
          ),
    );
  }
}

