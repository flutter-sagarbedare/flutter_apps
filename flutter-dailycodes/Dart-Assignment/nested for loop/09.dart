import 'dart:io';

void main(){
	int no=1;
	for(int i=1;i<=4;i++){
		no=i;
		for(int j=1;j<=4;j++){
			stdout.write("$no ");
			no++;
		}
		no=i;		
		print("");	
	}
}
