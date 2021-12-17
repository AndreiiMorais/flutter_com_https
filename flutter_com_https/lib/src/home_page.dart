import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List ToDo\'s'),
      ),
      body: ListView.builder(
        //o listview.builder cria um array com a quantidade de itemcount que tiver ja com scroll para a tela.
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          title: Text('item $index'),
        ),
      ),
    );
  }
}
