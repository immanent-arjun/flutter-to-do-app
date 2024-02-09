import 'package:flutter/material.dart';
import 'package:to_do_app/model/todo_Model.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo ;
  const TodoItem({Key? key,required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('clicked on todo items.');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical:5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Color.fromARGB(255, 33, 110, 243),
        ),
        title:  Text(
          todo.todoText!,
          style:  TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: todo.isDone? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Color.fromARGB(226, 206, 33, 20),
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 20,
            icon: const Icon(
              Icons.delete
            ), onPressed: () {
              print('item delete succesfully');
            },
          ),
        ),
      ),
    );
  }
}
