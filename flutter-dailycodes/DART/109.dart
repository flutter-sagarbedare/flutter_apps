int x = 5;
void fun(){
  if(x<1){
    return ;

  }
  print(x);
  x--;
  fun();
}
void main(){  
    fun();
       
}