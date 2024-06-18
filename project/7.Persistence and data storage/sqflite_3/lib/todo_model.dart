
class TodoTasks{
  int? taskId;
   final String title;
   final String description;
  final String date;

   TodoTasks({
    this.taskId,
    required this.title,
    required this.description,
    required this.date
  });

  Map<String,dynamic> todoMap(){
    return {
      // "taskId":taskId,
      'title':title,
      'description':description,
      'date':date
    };
  }

  @override
  String toString(){
    return 'taskId:$taskId,title:$title,description:$description,date:$date';
  }

}