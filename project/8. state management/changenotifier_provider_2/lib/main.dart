import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
        return ChangeNotifierProvider(
          create:(context){
              return Company(companyName:"Google",empCount:250);
          },
        
        child:const MaterialApp(
          home:MainApp(),
        debugShowCheckedModeBanner:false,
        ),
        );
    }

}
class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State<MainApp> createState()=>_MainAppState();
}

class _MainAppState extends State<MainApp>{
    @override
    Widget build(BuildContext context){
        return Scaffold(
          appBar:AppBar(
            title:const Text("ChangeNotifierProvider demo"),
            centerTitle:true,
            backgroundColor:Colors.blue,
          ),
          body:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Text(Provider.of<Company>(context).),
            ],
          ),
        );

    }

}


class Company extends ChangeNotifier{
    String companyName;
    int empCount;

    Company({
      required this.companyName,
      required this.empCount
     });

    void changeCompany(String companyName,int empCount){
      this.companyName=companyName;
      this.empCount=empCount;
      notifyListeners();
    }


}