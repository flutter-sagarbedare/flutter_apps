main(){
	int x =5,y=7;
	if( (++x > --y) && (x++ > ++y) ){
		print("both are same");	
	}else{
		print("not same");
	}
	print(x);
	print(y);
}
