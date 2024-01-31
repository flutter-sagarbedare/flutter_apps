import 'dart:io';
class Employee{
	String? empName = "sagar";
	int? empId = 120;
	double? salary = 12000;
	void empInfo(){
		print("Employee Name = $empName");
		print("Employee Id = $empId");
		print("Employee Salary = $salary");
	}
}
void main(){
	Employee obj = new Employee();
	obj.empInfo();
	print("ENter empname,empid and salary");
	obj.empName = stdin.readLineSync();
	obj.empId = int.parse(stdin.readLineSync()!);
	obj.salary = double.parse(stdin.readLineSync()!);
	obj.empInfo();
}
