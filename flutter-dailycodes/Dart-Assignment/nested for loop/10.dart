import 'dart:io';

void main(){
	int no=1;
	for(int i=1;i<=3;i++){
		no=i;
		for(int j = 1;j<=3;j++){
			stdout.write("$no ");
			no+=2;
		}
		no++;
		print("");
	}
}
