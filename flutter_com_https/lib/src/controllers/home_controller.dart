import 'package:flutter/foundation.dart';
import 'package:flutter_com_https/src/models/todo_model.dart';
import 'package:flutter_com_https/src/repositories/todo_repository.dart';

class HomeController {
  List<ToDoModel> todos = [];
  final repository = ToDoRepository();
  final state = ValueNotifier<Homestates>(Homestates.start);

  Future start() async {
    state.value = Homestates.loading;
    try {
      todos = await repository.fetchToDos();
      state.value = Homestates.sucess;
    } on Exception catch (e) {
      state.value = Homestates.error;
      // TODO
    }
  }
}

enum Homestates { start, loading, sucess, error }
