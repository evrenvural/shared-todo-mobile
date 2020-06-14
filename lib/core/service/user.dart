import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:shared_todo_mobile/core/model/user/request.dart';
import 'package:shared_todo_mobile/core/service/util/path.dart';

class UserService {
  static Future<bool> create(UserRequest user) async {
    try {
      final response = await http.post(userUrl, body: user.toJson());

      if (response.statusCode == HttpStatus.created) {
        print(response.body);
        return true;
      } else {
        print(response.body);
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
