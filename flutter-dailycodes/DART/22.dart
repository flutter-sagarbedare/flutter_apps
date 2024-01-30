main(){
	int x = 10;
	int y = 8;
	print((++x < ++y)&&(--x > ++x));

	int a = 5;
	int b = 6;
	
	print((++a < ++b)||(--a > ++b)); // || does not check 2nd condition						// if first condition is true.
	print(x);
	print(y);
	print(a);
	print(b);

	
}
