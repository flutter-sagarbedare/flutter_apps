void fun({String? name,double? sal}){
  print("In fun");
  print(name);
  print(sal);
  }
  void main(){
    print("start main");
    fun(sal:10.5,name:"Rahul");
    print("end main");
  }