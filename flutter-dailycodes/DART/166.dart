mixin demo1{

  void fun1(){
    print("in fun1 demo1");
  }
  void fun2();
}
void main(){
    demo1 obj1 = new demo1();
    obj1.fun1();
}