// NUll safety
void main(){
      playerInfo(name:"virat",jerNo:18); 
      playerInfo(name:"rohit"); 
}
void playerInfo({int? jerNo,String? name}){
  print(name);
  print(jerNo);
}