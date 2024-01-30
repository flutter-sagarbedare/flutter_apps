int sumOfNum(int no){
  int ans =0;
      while(no !=0){
        int rem = no % 10;
        ans = ans + rem;
        no = no ~/ 10;
      }
  return ans;
}