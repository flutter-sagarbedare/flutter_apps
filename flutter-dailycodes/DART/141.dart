void main(){
  fun();
}
int i =5;
void fun(){
    if(i==0)
      return ;
    print(i);
    i--;
    fun();

}