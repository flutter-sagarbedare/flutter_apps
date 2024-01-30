num fact =1;
void factorial(int num){
    if(num==1){
      return;
    }
    fact= fact*num;
    factorial(--num);
}
void main(){
       factorial(5);
       print(fact);
}