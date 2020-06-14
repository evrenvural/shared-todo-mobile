import 'package:flutter/material.dart';

import 'package:shared_todo_mobile/view/login.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Todo',
      home: LoginView(),
    );
  }
}
