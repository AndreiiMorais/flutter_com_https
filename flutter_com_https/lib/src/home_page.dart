import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_com_https/src/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List ToDo\'s'),
          actions: [
            IconButton(
              icon: Icon(
                Icons.refresh,
              ),
              onPressed: () {
                controller.start();
              },
            ),
          ],
        ),
        body: AnimatedBuilder(
          animation: controller.state,
          builder: (context, child) {
            return stateManager(controller.state.value);
          },
        ));
  }

  initState() {
    super.initState();
    controller.start();
  }

  _sucess() {
    return ListView.builder(
      //o listview.builder cria um array com a quantidade de itemcount que tiver ja com scroll para a tela.
      itemCount: controller.todos.length,
      itemBuilder: (context, index) {
        var todo = controller.todos[index];
        return ListTile(
          title: Text(todo.title),
        );
      },
    );
  }

  _error() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          controller.start();
        },
        child: Text('Tentar Novamente'),
      ),
    );
  }

  _start() {
    Container();
  }

  _loading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  stateManager(Homestates state) {
    switch (state) {
      case Homestates.start:
        return _start();
      case Homestates.loading:
        return _loading();
      case Homestates.error:
        return _error();
      case Homestates.sucess:
        return _sucess();
      default:
        _start();
    }
  }
}
