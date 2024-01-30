abstract class demo1{
  void fun1(){
    print("In fun demo 1");

  }
  void fun2();
}
abstract class demo2{
  void fun3(){
    print("In fun 3 in demo2");
  }
  void fun4();
}
class DemoChild implements demo1,demo2{
  void fun2(){
    print("in demo child fun2");
  }
  void fun4(){
    print("in demo child fun4");
  }
}
void main(){
    DemoChild obj1= new DemoChild();
    obj1.fun2();
    obj1.fun4();

}
