import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
        title: const Text(
      "Todo List",
      style: TextStyle(color: Colors.black),
    ));
  }

  _buildBody() {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title: Text("Task $index"),
        subtitle: Text("Desc $index"),
      );
    });
  }
}
