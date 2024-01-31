import 'dart:io';


bool? CheckIdPass(){
	print("Enter name and password");
	String? name = stdin.readLineSync();
	String? pass = stdin.readLineSync();
	if(name == "sagar"){
			if(pass == "Ganesh")
				return true;
	}else{
		return false;
	}
}
Future<dynamic> login()async{
	var ans = await CheckIdPass();
	if(ans == true){
		return Future.delayed(Duration(seconds:5),()=>"Login zal re bho");
	}else{
		return Future.delayed(Duration(seconds:5),()=>throw Exception("Barobar mahiti bhar re"));
	}
}
void main()async{
	print("Start");
	print(await login());
	print("End");

}
