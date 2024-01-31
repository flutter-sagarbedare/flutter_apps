void main(){
    fun(3);
}
void fun(int x){
  if(x==0){
    return;
  }
  print(x);
  x--;
  fun(x);
}