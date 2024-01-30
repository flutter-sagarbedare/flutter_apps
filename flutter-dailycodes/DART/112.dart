int sum_num=0;
void main(){
  sum(5);
  print(sum_num);
}
void sum(int num){
  if(num==0){
    return ;
  }
  sum_num=sum_num+num;
  num--;
  sum(num);
}