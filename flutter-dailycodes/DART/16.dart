main(){
	int x = 12;
	int ans = ++x + ++x;
	print(ans);
	print(x);

	ans = --x + --x;
	print(ans);
	print(x);

	ans = ++x + x++;
	print(ans);
	print(x);

	ans = --x + x--;
	print(ans);
	print(x);


}
