mixin demo1{
  int x =10;
  void fun1(){
        print("In fun1 demo1");
  }
  void fun2();
}
class DemoChild with demo1{
  void fun2(){
        print("In demo child fun 2");
        print("$x");
  }
}
void main(){
  DemoChild obj = new DemoChild();
  obj.fun1();
  obj.fun2();
}