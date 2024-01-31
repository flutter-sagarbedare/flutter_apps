import 'dart:io';
class Employee{
	String? empName = "Sagar";
	int? empId = 120;
	double? salary= 1.5;

	void empInfo(){
		print("Employee Name = $empName");
		print("Employee Id = $empId");
		print("Employee Salary = $salary");
	}
}
void main(){
	Employee empObj = new Employee();

	empObj.empInfo();

	print("Enter employee id:");
	empObj.empId = int.parse(stdin.readLineSync()!);
	print("Enter employee Name:");
	empObj.empName=stdin.readLineSync();

	print("Enter employee salary");
	empObj.salary = double.parse(stdin.readLineSync()!);

	empObj.empInfo();
}
