import 'dart:io';
class Company{
	int empCount = 500;
	String compName = "Google";
	String loc = "Pune";
	void compInfo(){
		stdout.write("empcount = $empCount,\ncompany name = $compName,\nlocation = $loc \n");
	}
}
void main(){
	Company obj1 = new Company();
	obj1.compInfo();
	Company obj2 = Company();
	obj2.compInfo();
	new Company().compInfo();
	
	Company().compInfo();
}
