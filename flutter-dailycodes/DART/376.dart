
void fun2(){
  for(int i =0;i<=10;i++){
    print("For 1 in fun2");
  }
  Future.delayed(Duration(seconds:1));
  for(int i =0;i<=10;i++){
    print("For 2 in fun2");
  }
}
void fun1(){
  for(int i =0;i<=10;i++){
    print("in fun1");
  }
}
void main(){
    print("start");
    fun1();
    fun2();
    print(" end");


}
