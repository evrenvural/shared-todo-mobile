import 'package:flutter/material.dart';

import 'package:shared_todo_mobile/core/model/user/request.dart';
import 'package:shared_todo_mobile/core/service/user.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                onChanged: (String text) {
                  setState(() {
                    name = text;
                  });
                },
              ),
              FloatingActionButton(
                onPressed: () {
                  UserService.create(
                    UserRequest(name: name),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
