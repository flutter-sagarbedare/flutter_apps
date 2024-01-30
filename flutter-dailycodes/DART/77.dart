void main(){
    print("start main");
    fun("kanha");
    fun("kanha",10.5);
    print("end main");
}
void fun(String name,[double str = 30.5]){
    print("in fun");
    print(name);
    print(str);
}