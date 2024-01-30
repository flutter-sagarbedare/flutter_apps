void main(){
    print("start main");
    int val=fun(20);
    print(val);
    print(a);
    print("End main"); 
}
int a = 50;
int fun(int x){
  print("in fun");
  a = a+x;
  return x;
}