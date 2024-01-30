import 'dart:io';
bool checkidpass(){
	print("Enter id and password: ");
	int id = int.parse(stdin.readLineSync()!);
	String? pass = stdin.readLineSync();
	
	if(id==123){
		if(pass == "abcd"){
			return true;
		}
	}else{
		return false;
	}
		
}

Future<String> login() async{
	var check = await checkidpass();
	if(check == true){
		return Future.delayed(Duration(seconds:5),()=>"Successfully login");
	}else{
		return Future.delayed(Duration(seconds:5),()=>throw Exception("Barobar Mahiti bhar!!"));
	}
}
void main() async{
	print("start");
	print(await login());
	print("end");
}
