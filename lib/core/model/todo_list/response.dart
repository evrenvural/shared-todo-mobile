import 'package:shared_todo_mobile/core/model/todo/response.dart';

class TodoListResponse {
  int completePercent;
  String id;
  String title;
  String createdBy;
  String code;
  List<TodoResponse> todos;

  TodoListResponse(
      {this.completePercent,
      this.id,
      this.title,
      this.createdBy,
      this.code,
      this.todos});

  TodoListResponse.fromJson(Map<String, dynamic> json) {
    completePercent = json['completePercent'];
    id = json['_id'];
    title = json['title'];
    createdBy = json['createdBy'];
    code = json['code'];
    if (json['todos'] != null) {
      todos = new List<TodoResponse>();
      json['todos'].forEach((v) {
        todos.add(new TodoResponse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['completePercent'] = this.completePercent;
    data['_id'] = this.id;
    data['title'] = this.title;
    data['createdBy'] = this.createdBy;
    data['code'] = this.code;
    if (this.todos != null) {
      data['todos'] = this.todos.map((v) => v.toJson()).toList();
    }
    return data;
  }
}