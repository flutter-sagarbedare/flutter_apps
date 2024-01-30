class Demo{
	int? _x;
	String? _str;
	Demo(this._x,this._str);
	void disp(){
		print(_x);
		print(_str);
	}
	void _show(){
		print(_x);
		print(_str);
	}

}
void main(){
	Demo obj1=new Demo(10,"kanha");
	obj1.disp();
	obj1._show();
	obj1._x=40;
	obj1._str="sagar";
	obj1._show();
}
