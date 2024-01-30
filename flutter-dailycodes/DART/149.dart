import 'dart:io';
void main(){
      //readlinesync
      print(stdin.runtimeType);
      String? name = stdin.readLineSync();
      int x = int.parse(stdin.readLineSync()!);
      print(name);
      print(x);

}