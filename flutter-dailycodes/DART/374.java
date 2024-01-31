class MyThread extends Thread{
    void start(){
        for(int i = 0;i<10;i++)
            System.out.println("child thread");
    }
}
class threadDemo{
    public static void main(String[] args){
            MyThread mt = new MyThread();
            mt.start();
            for(int i =0;i<10;i++)
                System.out.println("parent thread");
    }

}