void main(){
      fun();
      print("end of fun");
      gun(5); 
}
void fun(){
  print("in fun");
  for(int i =5;i>=1;i--){
    print(i);
  }
}
void gun(int x){
  if(x==0){
    return ;
  }
  print(x);
  gun(--x);
}
