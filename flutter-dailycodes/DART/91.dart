void playerInfo(String team,{required int jerNo,String? name}){
    print(team);
    print(jerNo);
    print(name);
}
void main(){
       //playerInfo("india");   error bcause it is required to pass jerNo
       playerInfo("india", jerNo: 18);
       playerInfo("india", jerNo: 18,name:"virat");       
}