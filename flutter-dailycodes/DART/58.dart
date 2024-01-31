void main(){
      int count =0;
      for(int i =1;i<=20;i++){
          if(i%4==0 || i%5==0){
            count++;
            continue;
          }
      }
      print(count);

}