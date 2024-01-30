class Demo{
	int x = 10;
	String str = "core2web";
	void info(){
		print(x);
		print(str);
	}
}
void main(){
	Demo obj = new Demo();
	obj.info();
	print(obj.x);
	print(obj.str);
}
