import 'package:flutter/material.dart';

import 'package:shared_todo_mobile/core/constant/arguments.dart';

class TodoView extends StatelessWidget {
  const TodoView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TodoArgument args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Text("TODO -> ${args.todoListId}"),
    );
  }
}
