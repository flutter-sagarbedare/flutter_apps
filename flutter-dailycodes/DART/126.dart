import 'dart:io';
void main(){
	int? empId;
	String? empName;
	double? empSalary;

	print("Enter employee id");
	empId = int.parse(stdin.readLineSync()!);
	print("Enter employee name");
	empName=stdin.readLineSync();
	print("Enter employee salary");
	empSalary=double.parse(stdin.readLineSync()!);

	print("Employee id = $empId");
	print("Employee name = $empName");
	print("Employee Salary = $empSalary");

}
