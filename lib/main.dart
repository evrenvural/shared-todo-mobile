import 'package:flutter/material.dart';

import 'package:shared_todo_mobile/view/main.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MainView(),
    );
  }
}