void main(){
  print("Statement 1");
  print("Statement 2");
  print("thamba jara mi kartoy kam 5 sec lagtil");
  Future.delayed(Duration(seconds:6),()=>print("statement 3"));
  print("Statement 4"`);
  print("Statement 5");
}