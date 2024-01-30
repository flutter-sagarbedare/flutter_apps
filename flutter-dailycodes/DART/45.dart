void main(){
    int value = 1;
    for(int i =1;i<= 8;i++){
      if(i%2==0){
          value = value * i;
      }
    }
    print(value+16);
}