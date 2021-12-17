import 'package:dio/dio.dart';
import 'package:flutter_com_https/src/repositories/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DioMock extends Mock implements Dio {
  //ver aula de Mockito

}


void main() {
  final repository = ToDoRepository();

  test('deve trazer uma lista de ToDoModel', () async {
    final list = await repository.fetchToDos();
    print(list);
  });
}
