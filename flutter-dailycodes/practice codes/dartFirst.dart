import 'dart:io';
import "dartSecond.dart";

void main(){
      print("Enter number");
      int num = int.parse(stdin.readLineSync()!);
      int ret = sumOfNum(num);
      print("Sum is $ret");
}