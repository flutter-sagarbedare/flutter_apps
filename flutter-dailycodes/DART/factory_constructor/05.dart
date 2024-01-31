abstract class Developer{
      factory Developer(String devType){
          if(devType == "Backend")
              return Backend();
          else if(devType == "Frontend")
              return Frontend();
          else if(devType == "Mobile")
              return Mobile();
          else 
              return other();
      }

      void devLang();

}
class Backend implements Developer{
    void devLang(){
        print("Nodejs/springboot");
    }
}

class Frontend implements Developer{
    void devLang(){
        print("ReactJs");
    }
}
class Mobile implements Developer{
    void devLang(){
        print("FLutter/android/ios");
    }
}
class other implements Developer{
    void devLang(){
        print("other");
    }
}