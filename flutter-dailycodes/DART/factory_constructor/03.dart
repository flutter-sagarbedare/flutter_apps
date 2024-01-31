class Backend{
    String? lang;
    Backend._code(String lang){
        if(lang =="JavaScript")
          this.lang = "Nodejs";
        else if(lang == "Java")
          this.lang = "SpringBoot";
        else 
          this.lang = "Try NodeJs/SpringBoot";
    }
    factory Backend(String lang){

        return Backend._code(lang);
    }
}