import 'dart:io';
void main(){
      print(stdin.runtimeType);
      int age = stdin.readLineSync();
      print(age); 
}
// op:- error means readLineSync return string 