import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_todo_mobile/view/home.dart';
import 'package:shared_todo_mobile/view/login.dart';

class MainView extends StatefulWidget {
  MainView({Key key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  String userId;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        userId = prefs.getString("userId");
        // prefs.clear();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: userId != null ? HomeView() : LoginView(),
    );
  }
}
