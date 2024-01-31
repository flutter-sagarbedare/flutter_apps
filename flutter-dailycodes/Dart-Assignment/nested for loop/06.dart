import 'dart:io';
void main(){
	int no=1;
	for(int i=0;i<3;i++){
		for(int j=0;j<3;j++){
			stdout.write("$no ");
			no+=2;
		}
		print("");
	}
}
