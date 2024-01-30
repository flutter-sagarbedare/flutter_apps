// stdoutput 
import 'dart:io';
void main(){
    int? empId;
    String? empName;
    double? salary;
    print("Enter empid ,empname,and empsalary:");
    empId = int.parse(stdin.readLineSync()!);
    empName = stdin.readLineSync();
    salary = double.parse(stdin.readLineSync()!);
    
    stdout.write("Id = $empId \nName = $empName \nSalary = $salary");

}