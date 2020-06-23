import 'package:flutter/material.dart';

import 'package:shared_todo_mobile/core/constant/route_name.dart';

import 'package:shared_todo_mobile/view/home.dart';
import 'package:shared_todo_mobile/view/login.dart';
import 'package:shared_todo_mobile/view/main.dart';
import 'package:shared_todo_mobile/view/todo.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MainView(),
      routes: {
        RouteName.LOGIN: (context) => LoginView(),
        RouteName.HOME: (context) => HomeView(),
        RouteName.TODO: (context) => TodoView(),
      },
    );
  }
}