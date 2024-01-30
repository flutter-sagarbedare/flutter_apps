
import 'dart:io';

void main(){
	print(stdin.runtimeType);
	String? name = stdin.readLineSync();
	print("name is $name");
	int? age = int.parse(stdin.readLineSync()!);
	print("age is $age");
}
