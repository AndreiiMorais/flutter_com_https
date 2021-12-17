import 'package:dio/dio.dart';
import 'package:flutter_com_https/src/models/todo_model.dart';

class ToDoRepository {
  final dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<ToDoModel>> fetchToDos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    //o response.data passa o json, mas passa em array, por isso é bom passar ele para lista
    return list.map((json) => ToDoModel.fromJson(json)).toList();
    //a linha do return faz exatamente o mesmo do List<ToDoModel> abaixo
    /* List<ToDoModel> toDos = [];
    for (var json in list) {
      final toDo = ToDoModel.fromJson(json);
      toDos.add(toDo);
    }

    return toDos;*/
  }
}
