
String getName(){
  return "sagar";
}
void main(){
    print("statement 1");
    Future.delayed(Duration(seconds:5),getName());
    print("statement 1");
}