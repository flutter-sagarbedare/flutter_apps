Future<String> getOrder(){
	return Future.delayed(Duration(seconds:5),()=>"Burger");
}
Future<String> getOrderMessage() async{
	var order = await getOrder();
	return "Your order is $order";
}
Future<void> main() async{
	print("start");
	print(await getOrderMessage());
	print("end");
}
