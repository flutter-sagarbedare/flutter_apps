void main(){
	int num1 = 120;
	if(num1 <= 90){
		print("No charge");
	}else if(num1 > 90 && num1 <=180){
		print(num1 * 6);
	}else if(num1 > 180 && num1 <=250){
		print(num1 * 10);
	}else{
		print(num1 * 15);
	}
}
