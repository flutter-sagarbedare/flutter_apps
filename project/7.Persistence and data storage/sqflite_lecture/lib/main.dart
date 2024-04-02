import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Player{
    final String name;
    final int jerNo;
    final int runs;
    final double avg;

    Player(
      {
        required this.name,
        required this.jerNo,
        required this.runs,
        required this.avg
      }
    );

    Map<String,dynamic> playerMap(){
      return {
        'name':name,
        'jerNo':jerNo,
        'runs':runs,
        'avg':avg,
      };
    }

    @override 
    String toString(){
      return '{name:$name,jerNo:$jerNo,runs:$runs,avg:$avg}';
    }

}
Future insertPlayerData(Player obj)async {
  final localDB = await database;

  await localDB.inser(
    'Player',
    obj.playerMap(),
    conflictAlgorithm:ConflictAlgorithm.replace,
  );
}

  Future<List<Player>> getPlayerData() async{
  final localDB = await database;

  List<Map<String,dynamic>> listPlayers=await localDB.query("Player");

  return List.generate(listPlayers.length, (i){
      return Player(
        name:listPlayers[i]['name'],
        jerNo:listPlayers[i]['jerNo'],
        runs:listPlayers[i]['runs'],
        avg:listPlayers[i]['avg'],
      );
  });
  }

 void main() async {
  // runApp(const MainApp());

  WidgetsFlutterBinding.ensureInitialized();

  // to see path of device you've connected  
  // String path = await getDatabasesPath();
  
  // print(path);

  database =  openDatabase(
    join(await getDatabasesPath(),"PlayerDB.db"),
    
    version:1,

    onCreate:(db,version) async{
      await db.execute(
        '''CREATE TABLE Player(
          name TEXT,
          jerNo INTEGER PRIMARY KEY,
          runs INT,avg REAL) ''',
      );
    }

    
  );

    //insert into
    Player batsman1 = Player(
      name:"Virat kohli",
      jerNo:45,
      runs:1322321,
      avg:12.3,
    );
    insertPlayerData(batsman1);

    Player batsman2 = Player(
      name:"Rohit Sharma",
      jerNo:23,
      runs:123435,
      avg:34.2,
    );

    insertPlayerData(batsman2);

    print(await getPlayerData());



}

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }
