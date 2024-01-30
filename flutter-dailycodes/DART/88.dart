void main(){
      playerInfo(name:"virat",jerNo:18); 
      playerInfo(name:"rohit"); 
      playerInfo(name:null,jerNo:null); 
}
void playerInfo({int? jerNo,String? name},[String team = "india"]){
  print(jerNo);
  print(name);
  print(team);
  }