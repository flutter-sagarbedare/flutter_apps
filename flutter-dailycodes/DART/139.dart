void main(){
      fun(); 
}
int i=1;
void fun(){
    if(i<=5){
        print(i);
        i++;
        fun();
    }
}