import 'package:flutter_com_https/src/models/todo_model.dart';
import 'package:flutter_com_https/src/repositories/todo_repository.dart';

class HomeController {
  List<ToDoModel> todos = [];
  final repository = ToDoRepository();

  Future start() async {
    todos = await repository.fetchToDos();
  }
}
