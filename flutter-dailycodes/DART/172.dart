import 'dart:io';
class demo{
	final int? x;
	final String? str;
	const demo(this.x,this.str);
		
}
void main(){
	int a=int.parse(stdin.readLineSync()!);
	String? str = stdin.readLineSync();
	demo obj = new demo(a,str);
//	obj.x=20;
//	obj.str="namaste";
}
