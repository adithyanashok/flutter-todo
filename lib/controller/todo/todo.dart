import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todo/core/api.dart';
import 'package:todo/model/todo/todo.dart';

class TodoController {
  static Future<List<Todo>> getTodo(userId) async {
    var res = await http.get(
      Uri.parse('$baseUrl/todo/get-todo/$userId'),
      headers: {"Content-Type": "application/json"},
    );
    final response = jsonDecode(res.body);
    print(response);
    List<Todo> todoList = [];
    for (var res in response) {
      final todo = Todo.fromJson(res);
      todoList.add(todo);
    }
    todoList.sort((a, b) =>
        (b.createdAt ?? DateTime(0)).compareTo(a.createdAt ?? DateTime(0)));
    return todoList;
  }
}
