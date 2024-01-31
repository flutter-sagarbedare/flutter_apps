// classes and Objects

class Player{
	String playerName = "MSDHONI";
	int jerseyNo = 7;

	void playerInfo(){
		print(jerseyNo);
		print(playerName);
	}
}

void main(){	
	Player obj = new Player();
	obj.playerInfo();
	obj.playerName = "Rohit Sharma";
	obj.jerseyNo = 45;
	obj.playerInfo();
}
