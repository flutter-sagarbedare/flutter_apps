class Player{
      String pName = "Gautam Gambhir";
      int jerNo = 23;
      void playerInfo(){
          print(jerNo);
          print(pName);
      }
}
void main(){
    Player obj = new Player();
    obj.playerInfo();
    obj.jerNo = 435;
    obj.pName= "Sagar";
    obj.playerInfo();

}
