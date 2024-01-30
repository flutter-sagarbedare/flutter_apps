import 'dart:io';

String login(){
	bool? x = CheckLogin();
	if(x == true){
		return "Login zal re bho";
	}
	else{
		return "Barobar mahiti bhar";
	}
}
bool? CheckLogin(){
	print("Enter Id and Password : ");
	int id = int.parse(stdin.readLineSync()!);
	String? pass = stdin.readLineSync();
	if(id == 1234){
		if(pass == "Sagar2124"){
			return true;
		}
	}else{
		return false;
	}

}
void main(){
	String ans = login();
	print(ans);
}
