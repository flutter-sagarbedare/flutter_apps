void playerInfo(String team,{int? jerNo,String? name}){
  print(jerNo);
  print(name);
  print(team);
  }
  
  void main(){
      playerInfo("india"); 
      playerInfo("india",18); 
      playerInfo("india",18,"virat"); 
}
