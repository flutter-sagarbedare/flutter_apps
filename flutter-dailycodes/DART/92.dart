void playerInfo(String team,{required int jerNo,String? name}){
    print(team);
    print(jerNo);
    print(name);
}

void main(){
      playerInfo("india",jerNo:18,name:"virat");
      playerInfo("india",jerNo:null,name:null); 
}