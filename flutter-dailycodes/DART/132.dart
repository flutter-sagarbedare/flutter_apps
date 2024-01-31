void main(){
	playerInfo("India");
	playerInfo("India",jerNo:18);
	playerInfo("India",jerNo:18,pName:"Virat");
}
void playerInfo(String team,{int? jerNo,String? pName}){
	print(team);
	print(jerNo);
	print(pName);
}
