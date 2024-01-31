class Employee{
	int empId = 10;
	String empName = "Ashish";
	double sal = 2.3;
	void info(){
		print(empId);
		print(empName);
		print(sal);
	}
}
void main(){
	Employee obj1 = new Employee();
	obj1.info();

	Employee obj2 = new Employee();
	obj2.info();
}
