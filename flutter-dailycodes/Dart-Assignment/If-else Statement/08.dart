void main(){
	int x = 10;
	bool a1,a2;
	if(x % 3 == 0){
		a1 = true;
	}else{
		a1 = false;
	}
	if(x % 5 == 0){
		a2 = true;
	}else{
		a2 = false;
	}
	if(a1 == true && a2 ==  true){
		print("Divisible by both");
	}else if(a1 == true){
		print("Divisible by 3");
	}else if(a2 == true){
		print("Divisible by 5");
	}
			
	

}
