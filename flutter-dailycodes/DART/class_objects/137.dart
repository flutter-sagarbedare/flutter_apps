class Demo{
	int x = 10;
	static int y = 20;

	void printdata(){
		print(x);
		print(y);
	}
}
void main(){
	Demo obj1 = Demo();
	obj1.printdata();

	Demo obj2 = Demo();
	obj2.printdata();

}
