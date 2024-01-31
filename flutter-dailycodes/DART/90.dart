void playerInfo(String team,{int? jerNo,String? name}){
  print(team);
  print(jerNo);
  print(name);
}

void main(){
       playerInfo("india");
       playerInfo("india",jerNo:18);
       playerInfo("india",jerNo:18,name:"virat");
}