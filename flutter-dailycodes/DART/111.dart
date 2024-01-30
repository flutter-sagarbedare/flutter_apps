void main(){
      int val = fun(5); 
      print(val);
}
int fun(int x){
  int sum = 0;
  for(int i = x;i>0;i--){
    sum=sum+i;
  }
  return sum;
}