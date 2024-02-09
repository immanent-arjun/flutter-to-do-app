class ToDo {
  String? id ;
  String? todoText ;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false
  });

  static List<ToDo> todoList(){
      return [
         ToDo(id: '01', todoText: 'Morning Exercise',isDone: true),
         ToDo(id: '02', todoText: 'Buy Clothes',isDone: true),
         ToDo(id: '03', todoText: 'Go To Market',),
         ToDo(id: '04', todoText: 'Do Homework',),
         ToDo(id: '05', todoText: 'Playing Games',isDone: true),
      ];
  }

}