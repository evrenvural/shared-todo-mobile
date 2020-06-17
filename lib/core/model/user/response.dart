import 'package:shared_todo_mobile/core/model/todo_list/response.dart';

class UserResponse {
  List<TodoListResponse> todoLists;
  String id;
  String name;

  UserResponse({this.todoLists, this.id, this.name});

  UserResponse.fromJson(Map<String, dynamic> json) {
    if (json['todoLists'] != null) {
      todoLists = new List<TodoListResponse>();
      json['todoLists'].forEach((v) {
        todoLists.add(new TodoListResponse.fromJson(v));
      });
    }
    id = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.todoLists != null) {
      data['todoLists'] = this.todoLists.map((v) => v.toJson()).toList();
    }
    data['_id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}


